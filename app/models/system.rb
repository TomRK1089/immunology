class System < ActiveRecord::Base

  UNCOMPROMISED = 0
  COMPROMISED = 1

  STATUSES = {
    UNCOMPROMISED => "uncompromised",
    COMPROMISED => "compromised"
  }

  belongs_to :user
  has_one :innate
  has_many :cells
  has_many :viri

  validates :user, presence: true

  def status_name
    STATUSES[status]
  end

  def regulation
    viruses = Virus.where(system_id: id).count
    cells = Cell.where(system_id: id).count
    while viruses > cells || self.balance_points > 0
      Cell.create(system_id: id)
      self.balance_points -= 1
    end
    if viruses > cells
      self.status = "compromised"
    end
    status
  end
end
