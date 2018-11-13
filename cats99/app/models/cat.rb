class Cat < ApplicationRecord
  included 'DateHelpers'
  COLORS = %w(RED BLUE GREEN ORANGE YELLOW BLACK)

  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: {in: COLORS}
  validates :name, presence: true
  validates :sex, presence: true, length: {is: 1}
  validates :description, presence: true

  def age
    Time.now.year - birth_date.year
  end
end
