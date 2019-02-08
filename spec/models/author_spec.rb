# == Schema Information
#
# Table name: authors
#
#  id         :bigint(8)        not null, primary key
#  bio        :text
#  birth      :date
#  full_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'model validations' do
    it { should validate_presence_of(:full_name) }
  end
end
