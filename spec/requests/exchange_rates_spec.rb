require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/exchange_rates", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ExchangeRate. As you add validations to ExchangeRate, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ExchangeRate.create! valid_attributes
      get exchange_rates_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      exchange_rate = ExchangeRate.create! valid_attributes
      get exchange_rate_url(exchange_rate)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_exchange_rate_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      exchange_rate = ExchangeRate.create! valid_attributes
      get edit_exchange_rate_url(exchange_rate)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ExchangeRate" do
        expect {
          post exchange_rates_url, params: { exchange_rate: valid_attributes }
        }.to change(ExchangeRate, :count).by(1)
      end

      it "redirects to the created exchange_rate" do
        post exchange_rates_url, params: { exchange_rate: valid_attributes }
        expect(response).to redirect_to(exchange_rate_url(ExchangeRate.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ExchangeRate" do
        expect {
          post exchange_rates_url, params: { exchange_rate: invalid_attributes }
        }.to change(ExchangeRate, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post exchange_rates_url, params: { exchange_rate: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested exchange_rate" do
        exchange_rate = ExchangeRate.create! valid_attributes
        patch exchange_rate_url(exchange_rate), params: { exchange_rate: new_attributes }
        exchange_rate.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the exchange_rate" do
        exchange_rate = ExchangeRate.create! valid_attributes
        patch exchange_rate_url(exchange_rate), params: { exchange_rate: new_attributes }
        exchange_rate.reload
        expect(response).to redirect_to(exchange_rate_url(exchange_rate))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        exchange_rate = ExchangeRate.create! valid_attributes
        patch exchange_rate_url(exchange_rate), params: { exchange_rate: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested exchange_rate" do
      exchange_rate = ExchangeRate.create! valid_attributes
      expect {
        delete exchange_rate_url(exchange_rate)
      }.to change(ExchangeRate, :count).by(-1)
    end

    it "redirects to the exchange_rates list" do
      exchange_rate = ExchangeRate.create! valid_attributes
      delete exchange_rate_url(exchange_rate)
      expect(response).to redirect_to(exchange_rates_url)
    end
  end
end
