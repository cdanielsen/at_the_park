require 'rails_helper'

describe Dog do
  it { should belong_to :user}
end
