class ApplicationController < ActionController::API
  def hello
    render json: :ok, status: :ok
  end
end
