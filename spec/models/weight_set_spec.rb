# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeightSet, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(build(:weight_set)).to be_valid
    end

    it 'is invalid without weight' do
      expect(build(:weight_set, weight: nil)).to be_invalid
    end

    it 'is invalid without reps' do
      expect(build(:weight_set, reps: nil)).to be_invalid
    end

    it 'is invalid without position' do
      expect(build(:weight_set, position: nil)).to be_invalid
    end
  end
end
