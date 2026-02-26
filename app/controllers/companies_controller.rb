class CompaniesController < ApplicationController

  def index
    # find all Company rows
    @companies = Company.all
    # render companies/index view
  end

  def show
    # find a Company
    @company_id = params["id"]
    @company = Company.find_by({"id" => @company_id})
    # render companies/show view with details about Company

    # render template...
  end

  def new
    # render view with new Company form
  end

  def create
    # start with a new Company
    new_company = Company.new

    # assign user-entered form data to Company's columns
    new_company["name"] = params["name"]
    new_company["city"] = params["city"]
    new_company["state"] = params["state"]
    # new_company["url"] = "https://apple.com"

    # save Company row
    new_company.save

    # redirect user
    redirect_to "/companies"
  end

  # def edit
  #   # find a Company
  #   # render view with edit Company form
  # end

  # def update
  #   # find a Company
  #   # assign user-entered form data to Company's columns
  #   # save Company row
  #   # redirect user
  # end

  # def destroy
  #   # find a Company
  #   # destroy Company row
  #   # redirect user
  # end

end
