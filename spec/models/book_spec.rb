require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should have_one(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_numericality_of(:percentage).only_integer.on(:create) }
  it { should validate_length_of(:percentage).is_at_least(1).is_at_most(100).on(:create) } 
end
