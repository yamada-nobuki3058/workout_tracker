# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExerciseMaster, type: :model do
  it 'is valid with name and exercise_type' do
    expect(build(:exercise_master)).to be_valid
  end

  it 'is invalid without name' do
    expect(build(:exercise_master, name: nil)).to be_invalid
  end
end
