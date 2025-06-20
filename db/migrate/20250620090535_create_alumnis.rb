class CreateAlumnis < ActiveRecord::Migration[8.0]
  def change
    create_table :alumnis do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
