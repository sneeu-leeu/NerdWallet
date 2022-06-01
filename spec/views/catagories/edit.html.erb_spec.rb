require 'rails_helper'

RSpec.describe "catagories/edit", type: :view do
  before(:each) do
    @catagory = assign(:catagory, Catagory.create!())
  end

  it "renders the edit catagory form" do
    render

    assert_select "form[action=?][method=?]", catagory_path(@catagory), "post" do
    end
  end
end
