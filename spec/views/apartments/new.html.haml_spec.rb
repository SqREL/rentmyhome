require 'rails_helper'

RSpec.describe "apartments/new", :type => :view do
  before(:each) do
    assign(:apartment, Apartment.new())
  end

  it "renders new apartment form" do
    render

    assert_select "form[action=?][method=?]", apartments_path, "post" do
    end
  end
end
