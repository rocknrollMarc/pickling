class GitServer < ActiveRecord::Base
  attr_accessible :edit_with_branches,:local_dir, :name, :password_digest, :server_address, :server_user
end
