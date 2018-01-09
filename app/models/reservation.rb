class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :pack

  monetize :amount_cents

  # Defines a set of tracking statuses available (mainly for rails_admin interface)
  def tracking_status_enum
    [ "paid", "suggestion", "meeting", "choice", "inscription" ]
  end
end
