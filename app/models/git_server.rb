class GitServer < ActiveRecord::Base
  attr_accessible :name, :protocol, :server_user, :password_digest, :local_dir

  def clone_address

    case protocol
      when 'ssh'
        connection = "ssh://#{server_user}:#{password_digest}@#{name}/"
      when 'https'
        connection = "https://#{server_user}:#{password_digest}@#{name}/"
      when 'http'
        connection = "http://#{server_user}:#{password_digest}@#{name}/"
      else
        connection = "git://#{name}/"
    end
    "git clone #{connection}"
  end
end
