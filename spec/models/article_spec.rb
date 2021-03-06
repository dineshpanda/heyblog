require 'rails_helper'

RSpec.describe Article, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:photos) }

    it { should have_many(:jpgs) }

    end

    describe "Validations" do

    end
end
