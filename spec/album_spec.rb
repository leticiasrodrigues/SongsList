require 'rails_helper'

describe Album, type: :model do

  describe 'associations' do
    it { is_expected.to have_many :songs }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:year) }
  end

  describe '.time_since_was_released' do
    let(:album) { create(:album, year: Date.today.year - 22) }
    it { expect(album.time_since_was_released).to eq 22 }
  end

end
