class User < ActiveRecord::Base
  attr_accessible :company, :email, :individual, :name, :password
end
