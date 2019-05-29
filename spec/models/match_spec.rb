require 'rails_helper'

RSpec.describe Match, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:map) }

    it { should belong_to(:faction01) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
