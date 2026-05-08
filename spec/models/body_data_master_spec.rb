# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BodyDataMaster, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(build(:body_data_master)).to be_valid
    end

    it 'is invalid without name' do
      expect(build(:body_data_master, name: nil)).to be_invalid
    end

    it 'is invalid without unit' do
      expect(build(:body_data_master, unit: nil)).to be_invalid
    end

    it 'is invalid without position' do
      expect(build(:body_data_master, position: nil)).to be_invalid
    end
  end

  describe 'assosiation' do
    it 'belongs_to user' do
      expect(described_class.reflect_on_association(:user).macro).to eq :belongs_to
    end
  end
end
