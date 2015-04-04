class Turn < ActiveRecord::Base
  belongs_to :system

  validates :system, presence: true
end
