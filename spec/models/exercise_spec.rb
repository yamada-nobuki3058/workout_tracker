# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it 'is valid with valid attributes' do
    expect(build(:exercise)).to be_valid
  end

  it 'is invalid without workout' do
    expect(build(:exercise, workout: nil)).to be_invalid
  end

  it 'is invalid without exercise_master' do
    expect(build(:exercise, exercise_master: nil)).to be_invalid
  end
end
