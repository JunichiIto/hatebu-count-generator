class HatebuLinksController < ApplicationController
  def new
    _params = session['hatebu'] || {}
    @hatebu = Hatebu.new(_params)
  end

  def create
    session['hatebu'] = hatebu_params
    redirect_to root_path
  end

  private

  def hatebu_params
    params.require(:hatebu).permit(:page_url)
  end
end