class CreateGitServers < ActiveRecord::Migration
  def change
    create_table :git_servers do |t|
      t.string :name
      t.string :protocol
      t.string :server_user
      t.string :password_digest
      t.string :local_dir
      t.timestamps
    end
  end
end
