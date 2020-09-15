require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should have_one(:category) }
  it { should validate_presence_of(:title) }
  it { should validate_numericality_of(:percentage).is_less_than_or_equal_to(100).is_greater_than_or_equal_to(1) }
end
