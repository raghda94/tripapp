class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.string :admin_email
      t.string :admin_password

      t.timestamps null: false
    end
  end
end
