class CreateTenantApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :tenant_applications do |t|
      t.string :token
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :landlord_name
      t.string :landlord_email
      t.string :landlord_phone
      t.text :evictions
      t.string :ssn
      t.string :maiden_name
      t.string :application_type

      t.timestamps
    end
  end
end
