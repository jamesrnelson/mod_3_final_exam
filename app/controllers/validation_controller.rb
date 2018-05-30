class ValidationController < ApplicationController
  def index
    @search = WordValidation.new(params[:search])
  end
end
