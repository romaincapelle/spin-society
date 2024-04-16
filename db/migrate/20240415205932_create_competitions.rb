class CreateCompetitions < ActiveRecord::Migration[7.1]
  def change
    create_table :competitions do |t|
      t.date :start_date
      t.integer :length_in_days
      t.integer :winner
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
