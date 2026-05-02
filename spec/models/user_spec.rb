# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it 'is valid with valid attributes' do
      expect(build(:user)).to be_valid
    end

    it 'is invalid without email' do
      expect(build(:user, email: nil)).to be_invalid
    end
  end
end
