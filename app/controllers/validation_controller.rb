class ValidationController < ApplicationController
  def index
    binding.pry
    @search = WordValidation.new(params[:search])
  end
end
