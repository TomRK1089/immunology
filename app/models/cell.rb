class Cell < ActiveRecord::Base
  ANTIBODY = 0
  ANTIGEN = 1

  STATUSES = {
    ANTIBODY => "antibody",
    ANTIGEN => "antigen"
  }

  belongs_to :system
  has_many :viri

  validates_presence_of :system

  def status_name
    STATUSES[status]
  end
end
