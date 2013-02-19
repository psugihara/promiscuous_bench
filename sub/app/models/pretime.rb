class Pretime
  include Mongoid::Document
  field :time, type: Float

  include Promiscuous::Subscriber
  subscribe :time

  after_create { Rails.logger.info "pretime: #{Time.now.to_f - time}" }
end
