require 'rails_helper'

RSpec.describe "apartments/edit", :type => :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!())
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do
    end
  end
end
