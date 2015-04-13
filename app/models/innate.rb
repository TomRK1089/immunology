class Innate < ActiveRecord::Base
  belongs_to :system

  validates :system, presence: true

  def add_points(response, sys)
    if response == "cytokine"
      self.cytokines += 1
    end
  end
end
