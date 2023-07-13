class CreateUserApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :user_applications do |t|
      t.references :flat, foreign_key: true
      t.string :applicant_name
      t.string :applicant_email
      t.string :applicant_phone_number
      t.text :applicant_infos
      t.boolean :warrant
      t.boolean :visit_needed

      t.timestamps
    end
  end
end
