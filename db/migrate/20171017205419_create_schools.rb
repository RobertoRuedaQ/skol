class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :state
      t.string :city
      t.string :school_name
      t.string :address
      t.string :gender
      t.string :levels
      t.string :school_hours
      t.string :languages
      t.string :owner
      t.string :cycle
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
