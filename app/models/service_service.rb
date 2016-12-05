class ServiceService < ActiveRecord::Base
  belongs_to :service_address
  belongs_to :service_category
  belongs_to :service_user
  has_many  :service_reviews



end
