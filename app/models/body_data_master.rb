# frozen_string_literal: true

class BodyDataMaster < ApplicationRecord
  belongs_to :user, optional: true

  has_many :body_records,
           dependent: :restrict_with_exception

  validates :name, presence: true
  validates :unit, presence: true
  validates :position, presence: true,
                       numericality: {
                         only_integer: true,
                         greater_than: 0
                       }
end
