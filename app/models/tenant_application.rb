class TenantApplication < ApplicationRecord

  validates :application_type, presence: true
  validates :token, uniqueness: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :update }
  validates :landlord_phone, length: { is: 10 }
  validates :phone, length: { is: 10 }
  validates :ssn,  length: { is: 9 }

end
