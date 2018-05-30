class ValidationController < ApplicationController
  def index
    if WordValidation.new(params[:search]).bad_response?
      @search = params[:search]
      render partial: 'bad_response'
    else
      @search = WordValidation.new(params[:search]).word
      render partial: 'good_response'
    end
  end
end
