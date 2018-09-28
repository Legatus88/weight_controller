class Record < ActiveRecord::Base
  validates :weight, presence: true
end
