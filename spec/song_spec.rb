require 'rails_helper'

describe Song, type: :model do

  describe 'associations' do
    it { is_expected.to belong_to :album }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
