class User < ActiveRecord::Base
attr_accessible :first_name, :last_name, :email, :password, :password_confirmation

  has_secure_password
  validates_presence_of :password, :on => :create

end

# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

