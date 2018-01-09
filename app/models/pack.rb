class Pack < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations

  monetize :price_cents

  rails_admin do
    edit do
      field :name
      field :price_cents
      field :description
      field :features, :pg_string_array
    end
  end
end
