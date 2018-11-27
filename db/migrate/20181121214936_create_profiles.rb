class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :flname
      t.text :subjects
      t.string :age
      t.string :phonenumber
      t.string :email
      t.text :experience

      t.timestamps
    end
  end
end
