# frozen_string_literal: true

Rails.application.routes.draw do
  post '/links/', to: 'links#create'
  get '/links/statistics', to: 'links#index'
  get '/links/statistics/count', to: 'links#count_rows'
  get '/links/statistics/full/:link_hash', to: 'links#show'
  get '/:link_hash', to: 'links#redirect'
end
