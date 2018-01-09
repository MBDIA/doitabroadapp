class PaymentsController < ApplicationController
  before_action :set_reservation

  # Displays a summary of the reservation and invites to pay
  def new
    @pack = @reservation.pack
  end

  # Create a new Stripe customer (for later use), pay via Stripe with user bank info and update the reservation statuses
  def create
    # Stripe customer creation
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
    )
    # Stripe payment
    charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @reservation.amount_cents,
    description:  "Paiement pour le pack #{@reservation.pack_sku} de la réservation #{@reservation.id}",
    currency:     @reservation.amount.currency
    )
    # Update the reservation statuses after payment is confirmed
    @reservation.update(payment: charge.to_json, payment_status: 'paid', tracking_status: 'paid')
    @reservation.save

    # Save paid amount in user profile (in case of pack modification, it will give ability to calculate amount to be paid)
    update_paid_amount(@reservation)

    # Redirect to user's dashboard
    redirect_to tracking_path

    # Send receipt E-mail
    send_receipt_mail

    # Redirect to payment page in case of error
    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_reservation_payment_path(@reservation)
  end

  private

  # Sets the user's reservation
  def set_reservation
    @reservation = current_user.reservation
  end

  def send_receipt_mail
    my_token = ENV['POSTMARK_API_KEY']
    client = Postmark::ApiClient.new(my_token)
    client.deliver_with_template(from: 'info@do-it-abroad.com',
                             to: "#{current_user.email}",
                             template_id: 3382008,
                             template_model: {
                               name: "#{current_user.first_name}",
                             })
  end

  def update_paid_amount(reservation)
    current_user.paid_amount += reservation.amount_cents
    current_user.save
  end

end
