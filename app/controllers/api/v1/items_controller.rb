class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.page(params[:page]).per(params[:per_page])
    render json: { resources: items, pager: {
        page: params[:page],
        per_page: params[:per_page],
        count: Item.count
    }}
  end

  def create
  end
end
