class AddPasswordDigestToWyborcy < ActiveRecord::Migration[7.1]
  def change
    add_column :wyborcas, :password_digest, :string
  end
end
