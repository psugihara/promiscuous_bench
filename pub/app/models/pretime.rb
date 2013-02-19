class Pretime < ActiveRecord::Base
  attr_accessible :time

  include Promiscuous::Publisher
  publish :time
end
