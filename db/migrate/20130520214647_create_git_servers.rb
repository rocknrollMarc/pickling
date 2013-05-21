class CreateGitServers < ActiveRecord::Migration
  def change
    create_table :git_servers do |t|
      t.string :name
      t.string :server_user
      t.string :password_digest
      t.string :server_address
      t.string :protocol
      t.string :local_dir
      t.boolean :edit_with_branches
      t.timestamps
    end
  end
end
