class ApplicationController < ActionController::Base
  def index
    response = HTTP.get("https://holidays.abstractapi.com/v1/?api_key=#{ENV["HOLIDAY_API_KEY"]}&country=US&year=2020&month=5")
    data = JSON.parse(response.body)
    render json: data
  end
end
