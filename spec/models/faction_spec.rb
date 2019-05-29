require 'rails_helper'

RSpec.describe Faction, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:matches) }

    it { should belong_to(:leader) }

    it { should belong_to(:civ) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
