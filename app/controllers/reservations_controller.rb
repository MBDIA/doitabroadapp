class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:edit, :update]
  before_action :set_packs, only: [:new, :edit]
  before_action :set_chosen_pack, only: [:create, :update]

  # Display all three packs and invite user to choose one
  def new
    # Set a new reservation
    @reservation = Reservation.new
  end

  # Create a reservation with associated to the current user and chosen pack and redirect to payment
  def create
    # Create a reservation with selected pack informations
    @reservation  = Reservation.create!(pack_sku: @pack.sku, amount: @pack.price, payment_status: 'pending', tracking_status: 'pending', user_id: current_user.id, pack_id: @pack.id)

    # Redirect to payment page
    redirect_to new_reservation_payment_path(@reservation)
  end

  # Display all three packs and invite user to choose a new one
  def edit
  end

  # Update current user reservation with new pack infos and redirect to payment
  def update
    # Calculate new amount to pay with amount already paid by user (converted into Money object)
    @amount_to_pay = @pack.price - Money.new(current_user.paid_amount, 'EUR')

    # Update the reservation
    @reservation.update(pack_sku: @pack.sku, amount: @amount_to_pay, payment_status: 'pending', tracking_status: 'pending', pack_id: @pack.id)

    # Redirect to payment page
    redirect_to new_reservation_payment_path(@reservation)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:pack_id, :user_id)
  end

  # Set current user reservation for reservations#edit and reservations#update (see before_action above)
  def set_reservation
    @reservation = current_user.reservation
  end

  # Set all packs for reservations#new and reservations#edit (see before_action above)
  def set_packs
    @packs = Pack.all.sort_by {|pack| pack.id}
  end

  # Set pack selected by user for reservations#create and reservations#update (see before_action above)
  def set_chosen_pack
    @pack = Pack.find(params[:pack_id])
  end
end
