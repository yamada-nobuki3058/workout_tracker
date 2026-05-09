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

  describe 'association' do
    it 'belongs to body_data_master' do
      expect(described_class.reflect_on_association(:body_data_master).macro).to eq :belongs_to
    end
  end
end
