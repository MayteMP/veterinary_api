# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pet, type: :model do
  before { create(:pet) }

  describe 'Create a pet record with valid values' do
    it 'return a register' do
      expect(Pet.count).to eq(1)
    end

    it do
      pet = Pet.last
      pet.genre = 'undefined'
      expect(pet).to validate_inclusion_of(:genre).in_array(%w[female male])
    end
  end

  describe 'Invalid pet data' do
    let(:pet) { build(:pet) }
    it 'return error if pet has not name' do
      pet.name = nil
      expect(pet.save).to eq(false)
    end

    it 'return error if pet has not color' do
      pet.color = nil
      pet.save
      expect(pet.errors.full_messages).to eq(["Color can't be blank"])
    end
  end
end
