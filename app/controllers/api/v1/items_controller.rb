class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.page params[:page]
    render json: { resources: items }
  end

  def create
  end
end
