class UserDataController < ApplicationController
  def new
    @user_data = UserDatum.new
    @study_levels = set_study_levels
    @specialisations = ["Arts, Communication, Culture", "Commerce, Gestion, Economie", "Droit, Administration, Sciences politique", "Lettres, Langues, Sciences humaines et sociales", "Santé, Soins, Sport", "Sciences, Technologie, Informatique", "Autre"]
    @pays = set_pays
    @budget = set_budgets
    @user_diplomas = ["Licence", "Top-up", "Master"]
  end

  # Create user_datum
  def create
    # Update user params with all the informations
    @user_data = UserDatum.new(user_data_params)
    @user_data.user = current_user


    if @user_data.save
      if current_user.has_reservation?
        # Redirect to reservations#new if user saves and has no reservation
        redirect_to new_reservation_path
      else
        # Redirect to reservations#edit if user saves and has reservation
        redirect_to edit_reservation_path(current_user.reservation)
      end
      flash[:notice] = "Vos infomations ont été enregistrées !"
    else
      flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
      render :new
    end

    # Send welcoming mail
    send_welcome_mail
  end

  def profile
    @user_data = current_user.user_datum
    if current_user.has_user_data?
      redirect_to new_user_datum_path
    elsif current_user.has_reservation?
      redirect_to new_reservation_path(current_user)
    elsif !current_user.has_paid?
      redirect_to new_reservation_payment_path(current_user.reservation)
    else
      # Set the user's reservation
      @reservation = current_user.reservation
      # Set the data for the user info form under tab "Mon profil"
      @study_levels = set_study_levels
      @specialisations = ["Arts, Communication, Culture", "Commerce, Gestion, Economie", "Droit, Administration, Sciences politique", "Lettres, Langues, Sciences humaines et sociales", "Santé, Soins, Sport", "Sciences, Technologie, Informatique", "Autre"]
      @pays = set_pays
      @budget = set_budgets
      @user_diplomas = ["Licence", "Top-up", "Master"]
    end
  end

  def update
    # Update user_data params with all the informations
    @user_data = UserDatum.find(params[:id])
    @user_data.update(user_data_params)

    # Redirect to users#tracking if user saves
    if @user_data.save
      redirect_to tracking_path
      flash[:notice] = "Vos infomations ont été enregistrées !"
    else
      flash[:alert] = "Une erreur s'est produite, veuillez réessayer."
      render :profile
    end
  end

  private

  def user_data_params
    params.require(:user_datum).permit(
      :birthday,
      :email,
      :phone_number,
      :study_level,
      :specialisation,
      :user_diploma,
      :description,
      :budget,
      :passport,
      :resume,
      :motivation_letter,
      :marks,
      :others,
      :other_study_level,
      :other_specialisation,
      :favourite_pays => []
    )
  end

  def set_pays
    pays = []
    csv_text = File.read('app/assets/data/pays.csv')
    csv = CSV.parse(csv_text, :headers => false)
    csv.each do |row|
      pays << row
    end
    return pays.flatten
  end

  def set_study_levels
    study_levels = []
    csv_text = File.read('app/assets/data/study_levels.csv')
    csv = CSV.parse(csv_text, :headers => false)
    csv.each do |row|
      study_levels << row
    end
    return study_levels.flatten
  end

  def set_budgets
    budgets = []
    csv_text = File.read('app/assets/data/budgets.csv')
    csv = CSV.parse(csv_text, :headers => false)
    csv.each do |row|
      budgets << row
    end
    return budgets.flatten
  end


  def send_welcome_mail
    my_token = ENV['POSTMARK_API_KEY']
    client = Postmark::ApiClient.new(my_token)
    client.deliver_with_template(from: 'info@do-it-abroad.com',
      to: "#{current_user.email}",
      template_id: 3382008,
      template_model: {
        name: "#{current_user.first_name}",
        })
      end
    end
