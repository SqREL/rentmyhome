require 'rails_helper'

RSpec.describe "apartments/show", :type => :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
