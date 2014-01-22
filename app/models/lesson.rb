class Lesson < ActiveRecord::Base
  belongs_to :workshop
  has_many :meetings
  has_many :sections, through: :meetings
end
