class CreateDoctorsPatients < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors_patients do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
