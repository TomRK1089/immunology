class Virus < ActiveRecord::Base
  LATENT = 0
  LYSOGENIC = 1
  LYTIC = 2

  STATUSES = {
    LATENT => "latent",
    LYSOGENIC => "lysogenic",
    LYTIC => "lytic"
  }

  belongs_to :system
  belongs_to :cell

  validates_presence_of :system_id

  def status_name
    STATUSES[status]
  end
end
