class Article < ApplicationRecord
  self.locking_column = :version

  validates :title, presence: true
  validates :text, presence: true

  def update(new_attributes)
    super(new_attributes)
  rescue ActiveRecord::StaleObjectError
    errors.add(:base, :staled)
    false
  end
end
