class JobPosting < ActiveRecord::Base
  validates :salary, :numericality => { greater_than: 0 }
  serialize :tags
end
