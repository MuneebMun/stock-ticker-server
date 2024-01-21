Rails.application.routes.draw do
  get '/stocks/fetch_data/:ticker/:start_date/:end_date', to: 'stocks#fetch_data'
end
