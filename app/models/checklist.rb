class Checklist < ApplicationRecord
  belongs_to :card, dependent: :destroy
end
