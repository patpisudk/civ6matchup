require 'rails_helper'

RSpec.describe Leader, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:factions) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
