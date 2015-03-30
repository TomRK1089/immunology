class System < ActiveRecord::Base
  UNCOMPROMISED = 0
  COMPROMISED = 1

  STATUSES = {
    UNCOMPROMISED => "uncompromised",
    COMPROMISED => "compromised"
  }

  belongs_to :user
  has_many :cells
  has_many :viri


  def status_name
    STATUSES[status]
  end
end
