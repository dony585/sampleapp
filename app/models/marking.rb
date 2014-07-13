class Marking < ActiveRecord::Base
  attr_accessible :micropost_id

  belongs_to :user
  belongs_to :micropost

  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
