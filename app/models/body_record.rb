# frozen_string_literal: true

class BodyRecord < ApplicationRecord
  belongs_to :body_data_master

  validates :date, presence: true
  validates :value, presence: true
end
