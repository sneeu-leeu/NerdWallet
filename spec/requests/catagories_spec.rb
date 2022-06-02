require 'rails_helper'

RSpec.describe "/catagories", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Catagory. As you add validations to Catagory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Catagory.create! valid_attributes
      get catagories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      catagory = Catagory.create! valid_attributes
      get catagory_url(catagory)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_catagory_url
      expect(response).to be_successful
    end
  end


  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Catagory" do
        expect {
          post catagories_url, params: { catagory: valid_attributes }
        }.to change(Catagory, :count).by(1)
      end

      it "redirects to the created catagory" do
        post catagories_url, params: { catagory: valid_attributes }
        expect(response).to redirect_to(catagory_url(Catagory.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Catagory" do
        expect {
          post catagories_url, params: { catagory: invalid_attributes }
        }.to change(Catagory, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post catagories_url, params: { catagory: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested catagory" do
      catagory = Catagory.create! valid_attributes
      expect {
        delete catagory_url(catagory)
      }.to change(Catagory, :count).by(-1)
    end

    it "redirects to the catagories list" do
      catagory = Catagory.create! valid_attributes
      delete catagory_url(catagory)
      expect(response).to redirect_to(catagories_url)
    end
  end
end
