class AddCommenterNameToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :commenter_name, :string
  end
end
