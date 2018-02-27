class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Kale Kindyl API" }
  end
end
