class CatRentalRequest < ApplicationRecord
  STATUS = %w(APPROVED PENDING DENIED).freeze

  validates :cat_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :cat_id, presence: true
  validates :status, presence: true, inclusion: {in: STATUS}

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat,

end
