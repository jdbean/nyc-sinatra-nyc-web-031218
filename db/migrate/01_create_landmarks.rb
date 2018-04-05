class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.references :figures
      t.integer :year_completed
    end
  end
end
