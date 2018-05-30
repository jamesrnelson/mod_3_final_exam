class ValidationController < ApplicationController
  def index
    @search = WordValidation.new(params[:search]).word
  end
end
