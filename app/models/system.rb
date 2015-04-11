class System < ActiveRecord::Base
  include MyModules::Turn

  UNCOMPROMISED = 0
  COMPROMISED = 1

  STATUSES = {
    UNCOMPROMISED => "uncompromised",
    COMPROMISED => "compromised"
  }


  belongs_to :user
  has_many :cells
  has_many :viri


  validates :user, presence: true

  def status_name
    STATUSES[status]
  end

  def regulation
    viruses = Virus.where(system_id: id).count
    cells = Cell.where(system_id: id).count
    while viruses > cells || balance_points > 0
      cells += 1
      balance_points -= 1
    end
    if viruses > cells
      self.status = "compromised"
    end
  end

  def innate_response(cytokines, macromolecules, phagocytes)
    if stage == "innate"
      balance_points = cytokines
      antibodies -= macromolecules
      memory += (macromolecules/2)
    end
  end
end
