require 'rails_helper'

RSpec.describe Pet, type: :model do
  let(:pet) { FactoryBot.create(:pet) }
  
  describe 'Pet with valid values' do 
    it 'create a new register' do
      expect(Pet.all.count).to eq(1)
    end
  end
end
