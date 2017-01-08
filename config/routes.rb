Rails.application.routes.draw do
  root to: 'hatebu_links#new'
  resource :hatebu_link, only: %i(create)
end
