class GitRepo < ActiveRecord::Base
  attr_accessible :name, :relative_remote_url, :git_server_id
end
