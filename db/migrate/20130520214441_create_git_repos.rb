class CreateGitRepos < ActiveRecord::Migration
  def change
    create_table :git_repos do |t|
      t.string :name
      t.string :relative_remote_url
      t.integer :git_server_id
      t.timestamps
    end
  end
end
