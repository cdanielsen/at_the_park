require 'rails_helper'

describe Park do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }

  it { should have_many :users }
end
