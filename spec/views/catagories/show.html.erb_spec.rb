require 'rails_helper'

RSpec.describe "catagories/show", type: :view do
  before(:each) do
    @catagory = assign(:catagory, Catagory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
