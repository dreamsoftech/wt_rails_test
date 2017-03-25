class CompaniesController < ApplicationController
  def index
    render json: Company.all
  end

  def create_company
  	company = Company.new
  	company.name = company_params[:name]
  	render json: company.save ? "Success" : "Failed"
  end

  def create_fakers
  	(0..100).each do |i|
  		Company.create(name: Faker::Company.unique.name)
  	end
  end

  private
  
  def company_params
  	params.permit(:name)
  end
end
