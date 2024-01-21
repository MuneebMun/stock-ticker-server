class StocksController < ApplicationController 
  include HTTParty 
  def fetch_data 
    ticker = params[:ticker]
    start_date = params[:start_date] || '2023-01-01'
    end_date = params[:end_date] || '2023-12-31'
    api_key = '[API_KEY_HERE]' 
    response = HTTParty.get("https://api.polygon.io/v2/aggs/ticker/#{ticker}/range/1/day/#{start_date}/#{end_date}?apiKey=#{api_key}") 
    render json: response.body 
  end 
end 
