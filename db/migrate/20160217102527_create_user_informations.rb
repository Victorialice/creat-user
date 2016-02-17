class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
