# class Brand < AvctiveHash::Base
# end

class ApplicationRecord < ActiveRecord::Base
  # extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :contry
  self.abstract_class = true
end
