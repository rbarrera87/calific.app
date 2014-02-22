require 'spec_helper'

describe ProfilesController do

<<<<<<< HEAD
  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
=======
  describe "GET 'index,'" do
    it "returns http success" do
      get 'index,'
>>>>>>> 5-Add-table-called-grados
      response.should be_success
    end
  end

<<<<<<< HEAD
  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
=======
  describe "GET 'update,'" do
    it "returns http success" do
      get 'update,'
      response.should be_success
    end
  end

  describe "GET 'delete,'" do
    it "returns http success" do
      get 'delete,'
      response.should be_success
    end
  end

  describe "GET 'new,'" do
    it "returns http success" do
      get 'new,'
      response.should be_success
    end
  end

  describe "GET 'destroy,'" do
    it "returns http success" do
      get 'destroy,'
>>>>>>> 5-Add-table-called-grados
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

end
