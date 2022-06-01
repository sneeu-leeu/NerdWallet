require 'rails_helper'

RSpec.describe "catagories/new", type: :view do
  before(:each) do
    assign(:catagory, Catagory.new())
  end

  it "renders new catagory form" do
    render

    assert_select "form[action=?][method=?]", catagories_path, "post" do
    end
  end
end
