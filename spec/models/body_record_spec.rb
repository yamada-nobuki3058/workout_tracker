# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BodyRecord, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      body_record = build(:body_record)
      expect(body_record).to be_valid
    end

    it 'is invalid without a date' do
      body_record = build(:body_record, date: nil)
      expect(body_record).not_to be_valid
    end

    it 'is invalid without a value' do
      body_record = build(:body_record, value: nil)
      expect(body_record).not_to be_valid
    end
  end
end
