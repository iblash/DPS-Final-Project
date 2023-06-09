class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
