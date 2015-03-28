class System < ActiveRecord::Base
  UNCOMPROMISED = 0
  COMPROMISED = 1

  STATUSES = {
    UNCOMPROMISED => "uncompromised",
    COMPROMISED => "compromised"
  }

  has_many :cells
  has_many :viruses

  validates_inclusion_of :status, :in => STATUSES.keys
  validate_presence_of :differentiation
  validate_presence_of :memory
  validate_presence_of :apoptosis
  validate_presence_of :pyrogenation

  def status_name
    STATUSES[status]
  end
end
