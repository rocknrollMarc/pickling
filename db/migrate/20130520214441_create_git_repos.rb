class CreateGitRepos < ActiveRecord::Migration
  def change
    create_table :git_repos do |t|
      t.string :project_name
      t.string :project_directory
      t.string :working_branch
      t.integer :git_server_id
      t.timestamps
    end
  end
end
