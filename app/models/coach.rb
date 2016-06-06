class Coach < ActiveRecord::Base
  has_many :athletes

  before_action :require_login
end
