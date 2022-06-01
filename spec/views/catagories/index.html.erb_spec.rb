require 'rails_helper'

RSpec.describe "catagories/index", type: :view do
  before(:each) do
    assign(:catagories, [
      Catagory.create!(),
      Catagory.create!()
    ])
  end

  it "renders a list of catagories" do
    render
  end
end
