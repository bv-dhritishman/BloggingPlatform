class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :authors, :email, unique: true
  end
end
