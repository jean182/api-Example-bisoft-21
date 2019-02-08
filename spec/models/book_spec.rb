require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'model validations' do
    it { should validate_presence_of(:title) }
  end
end
