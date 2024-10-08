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

RSpec.describe "/admin_accounts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AdminAccount. As you add validations to AdminAccount, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AdminAccount.create! valid_attributes
      get admin_accounts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      admin_account = AdminAccount.create! valid_attributes
      get admin_account_url(admin_account)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_admin_account_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      admin_account = AdminAccount.create! valid_attributes
      get edit_admin_account_url(admin_account)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AdminAccount" do
        expect {
          post admin_accounts_url, params: { admin_account: valid_attributes }
        }.to change(AdminAccount, :count).by(1)
      end

      it "redirects to the created admin_account" do
        post admin_accounts_url, params: { admin_account: valid_attributes }
        expect(response).to redirect_to(admin_account_url(AdminAccount.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AdminAccount" do
        expect {
          post admin_accounts_url, params: { admin_account: invalid_attributes }
        }.to change(AdminAccount, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post admin_accounts_url, params: { admin_account: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested admin_account" do
        admin_account = AdminAccount.create! valid_attributes
        patch admin_account_url(admin_account), params: { admin_account: new_attributes }
        admin_account.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the admin_account" do
        admin_account = AdminAccount.create! valid_attributes
        patch admin_account_url(admin_account), params: { admin_account: new_attributes }
        admin_account.reload
        expect(response).to redirect_to(admin_account_url(admin_account))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        admin_account = AdminAccount.create! valid_attributes
        patch admin_account_url(admin_account), params: { admin_account: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested admin_account" do
      admin_account = AdminAccount.create! valid_attributes
      expect {
        delete admin_account_url(admin_account)
      }.to change(AdminAccount, :count).by(-1)
    end

    it "redirects to the admin_accounts list" do
      admin_account = AdminAccount.create! valid_attributes
      delete admin_account_url(admin_account)
      expect(response).to redirect_to(admin_accounts_url)
    end
  end
end
