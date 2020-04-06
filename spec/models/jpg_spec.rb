require 'rails_helper'

RSpec.describe Jpg, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:photo) }

    end

    describe "InDirect Associations" do

    it { should have_one(:article) }

    end

    describe "Validations" do

    end
end
