require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ErrataReportsController do

  # This should return the minimal set of attributes required to create a valid
  # ErrataReport. As you add validations to ErrataReport, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ErrataReportsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all errata_reports as @errata_reports" do
      errata_report = ErrataReport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:errata_reports).should eq([errata_report])
    end
  end

  describe "GET show" do
    it "assigns the requested errata_report as @errata_report" do
      errata_report = ErrataReport.create! valid_attributes
      get :show, {:id => errata_report.to_param}, valid_session
      assigns(:errata_report).should eq(errata_report)
    end
  end

  describe "GET new" do
    it "assigns a new errata_report as @errata_report" do
      get :new, {}, valid_session
      assigns(:errata_report).should be_a_new(ErrataReport)
    end
  end

  describe "GET edit" do
    it "assigns the requested errata_report as @errata_report" do
      errata_report = ErrataReport.create! valid_attributes
      get :edit, {:id => errata_report.to_param}, valid_session
      assigns(:errata_report).should eq(errata_report)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ErrataReport" do
        expect {
          post :create, {:errata_report => valid_attributes}, valid_session
        }.to change(ErrataReport, :count).by(1)
      end

      it "assigns a newly created errata_report as @errata_report" do
        post :create, {:errata_report => valid_attributes}, valid_session
        assigns(:errata_report).should be_a(ErrataReport)
        assigns(:errata_report).should be_persisted
      end

      it "redirects to the created errata_report" do
        post :create, {:errata_report => valid_attributes}, valid_session
        response.should redirect_to(ErrataReport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved errata_report as @errata_report" do
        # Trigger the behavior that occurs when invalid params are submitted
        ErrataReport.any_instance.stub(:save).and_return(false)
        post :create, {:errata_report => { "name" => "invalid value" }}, valid_session
        assigns(:errata_report).should be_a_new(ErrataReport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ErrataReport.any_instance.stub(:save).and_return(false)
        post :create, {:errata_report => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested errata_report" do
        errata_report = ErrataReport.create! valid_attributes
        # Assuming there are no other errata_reports in the database, this
        # specifies that the ErrataReport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ErrataReport.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => errata_report.to_param, :errata_report => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested errata_report as @errata_report" do
        errata_report = ErrataReport.create! valid_attributes
        put :update, {:id => errata_report.to_param, :errata_report => valid_attributes}, valid_session
        assigns(:errata_report).should eq(errata_report)
      end

      it "redirects to the errata_report" do
        errata_report = ErrataReport.create! valid_attributes
        put :update, {:id => errata_report.to_param, :errata_report => valid_attributes}, valid_session
        response.should redirect_to(errata_report)
      end
    end

    describe "with invalid params" do
      it "assigns the errata_report as @errata_report" do
        errata_report = ErrataReport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ErrataReport.any_instance.stub(:save).and_return(false)
        put :update, {:id => errata_report.to_param, :errata_report => { "name" => "invalid value" }}, valid_session
        assigns(:errata_report).should eq(errata_report)
      end

      it "re-renders the 'edit' template" do
        errata_report = ErrataReport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ErrataReport.any_instance.stub(:save).and_return(false)
        put :update, {:id => errata_report.to_param, :errata_report => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested errata_report" do
      errata_report = ErrataReport.create! valid_attributes
      expect {
        delete :destroy, {:id => errata_report.to_param}, valid_session
      }.to change(ErrataReport, :count).by(-1)
    end

    it "redirects to the errata_reports list" do
      errata_report = ErrataReport.create! valid_attributes
      delete :destroy, {:id => errata_report.to_param}, valid_session
      response.should redirect_to(errata_reports_url)
    end
  end

end
