class TenantApplication < ApplicationRecord

=begin
  I wanted to include these back end validations, but they were
  causing problems with allowing any data to to get through.
  I believe this is because of the use of a single model --
  so when the application is created, the fields that that are nil/null
  would not be accepted since they are invalid. I think a way to have
  resolved this would have been to have more tha one model, so that
  upon creation, there are never any fields without data.
=end

  # validates :application_type, presence: true
  # validates :token, uniqueness: true
  # validates :email, uniqueness: true
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :update }
  # validates :landlord_phone, length: { is: 10 }
  # validates :phone, length: { is: 10 }
  # validates :ssn,  length: { is: 9 }

end
