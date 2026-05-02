# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Workout, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(build(:workout)).to be_valid
    end

    it 'is invalid without user' do
      expect(build(:workout, user: nil)).to be_invalid
    end
  end
end
