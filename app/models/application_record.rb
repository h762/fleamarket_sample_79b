class ApplicationRecord < ActiveRecord::Base
  belongs_to :contry
  self.abstract_class = true
end
