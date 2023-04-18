class CreateDailyMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_medications do |t|
      t.string :name
      t.references :prescription, foreign_key: true

      t.timestamps
    end
  end
end
