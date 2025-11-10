class Assignment < ApplicationRecord
  STATUSES = %w[pending in_progress done].freeze

  validates :title, presence: true
  validates :due_date, presence: true
  validates :status, inclusion: { in: STATUSES }
end
