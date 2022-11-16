require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

it { should validate_presence_of(:email) }
it { should validate_presence_of(:password_digest) }

it { should validates_length_of(:password) > 6}
