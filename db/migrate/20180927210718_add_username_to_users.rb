class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true

    User.create! do |u|
      u.email     = 'admin@gmail.com'
      u.password    = 'User*123'
      u.username    = 'admin'
    end

  end
end
