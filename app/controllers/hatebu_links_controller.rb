class HatebuLinksController < ApplicationController
  def new
    @hatebu = Hatebu.new
  end

  def create
    @hatebu = Hatebu.new(hatebu_params)
    render 'new'
  end

  private

  def hatebu_params
    params.require(:hatebu).permit(:page_url)
  end
end