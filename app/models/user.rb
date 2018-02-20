class User < ApplicationRecord
  @ip_regex = /\A([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}\z/
  @port_regex = /\A(6553[0-5]|655[0-2][0-9]\d|65[0-4](\d){2}|6[0-4](\d){3}|[1-5](\d){4}|[1-9](\d){0,3})\z/

  has_many :values, :dependent => :destroy
  # has_many :values, :dependent => :delete_all

  validates :ip,
            :presence => true,
            :uniqueness => true,
            :format => { :with => @ip_regex }

  validates :port,
            :presence => true,
            :format => { :with => @port_regex }

end
