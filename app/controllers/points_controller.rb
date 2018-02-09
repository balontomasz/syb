class PointsController < ApplicationController
  def index
    render json: Point.all.select(:id, :x, :y)
  end
end
