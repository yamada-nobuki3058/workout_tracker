# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CardioSet, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(build(:cardio_set)).to be_valid
    end

    it 'is invalid without distance' do
      expect(build(:cardio_set, distance: nil)).to be_invalid
    end

    it 'is invalid without duration' do
      expect(build(:cardio_set, duration: nil)).to be_invalid
    end

    it 'is invalid without position' do
      expect(build(:cardio_set, position: nil)).to be_invalid
    end
  end
end
