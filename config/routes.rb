ActionController::Routing::Routes.draw do |map|
  map.resources :surveys

  map.connect '', :controller => 'main', :action => 'index'
end
