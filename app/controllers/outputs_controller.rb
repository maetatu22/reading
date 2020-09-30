class OutputsController < ApplicationController
  def index
    @outputs = Output.all
  end

  def new
    @output = Output.new
  end

  def create
    Output.create(output_params)
  end
  


  private

  def output_params
    params.require(:output).permit(:book_genre_id, :book_name, :post_type_id, :post_text).merge(user_id: current_user.id)
  end
end
