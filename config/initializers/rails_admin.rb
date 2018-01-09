RailsAdmin.config do |config|
  # Admin only authorization for access to admin dashboard
  config.authorize_with do |controller|
    unless current_user && current_user.admin
      redirect_to main_app.root_path
    end
  end

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # RailsAdmin display configuration in admin dashboard for each model
  config.model 'Reservation' do
    list do
      field :id
      field :user
      field :pack
      field :skype_meeting
      field :tracking_status
      field :payment_status
    end
  end

  config.model 'Pack' do
    list do
      field :id
      field :name
      field :price_cents
      field :sku
      field :users
    end
  end

  config.model 'UserDatum' do
    list do
      field :id
      field :user
      field :phone_number
      field :birthday
      field :study_level
      field :other_study_level
      field :specialisation
      field :user_diploma
      field :description
      field :favourite_pays
      field :budget
    end
  end

  config.model 'User' do
    list do
      field :id
      field :email
      field :first_name
      field :last_name
      field :reservation
      field :suggestion
    end
    exclude_fields :confirmation_token
  end

  config.model 'Suggestion' do
    list do
      field :id
      field :user
      field :diploma_one_id
      field :diploma_two_id
      field :diploma_three_id
      field :diploma_four_id
      field :diploma_five_id
    end
  end


  config.model 'Diploma' do
    list do
      field :id do
        sortable :id
        filterable true
      end
      field :google_sheets_id do
        sortable :google_sheets_id
        filterable true
      end
      field :name do
        sortable :name
        filterable true
      end
      field :discipline do
        sortable :discipline
        filterable true
      end
      field :country do
        sortable :country
        filterable true
      end
      field :university do
        sortable :university
        filterable true
      end
    end
  end
end
