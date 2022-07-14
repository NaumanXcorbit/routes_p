class AddEmailToPublishers < ActiveRecord::Migration[6.1]
  def change
    add_column :publishers, :email, :string
  end
end
