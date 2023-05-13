Rails.application.routes.draw do
  #get("/", { :controller => "movies", :action => "index" })
  #get"/",  controller: "movies", :action:  "index" 
  #get "/" => "movies#index"
 root "movies#index"
  # Routes for the Movie resource:

  # CREATE
  #post("/movies", { :controller => "movies", :action => "create" })
  #get("/movies/new", { :controller => "movies", :action => "new" })
  post "/movies" => "movies#create" 
get "/movies/new" => "movies#new"      
  # READ
  #get("/movies", { :controller => "movies", :action => "index" })
  #get("/movies/:id", { :controller => "movies", :action => "show" })
  get "/movies" => "movies#index" 
  get "/movies/:id" => "movies#show" 
  # UPDATE
  #patch("/movies/:id", { :controller => "movies", :action => "update" })
  #get("/movies/:id/edit", { :controller => "movies", :action => "edit" })
  patch "/movies/:id"=> "movies#update"
  get "/movies/:id/edit"=>"movies#edit"
  # DELETE
  #delete("/movies/:id", { :controller => "movies", :action => "destroy" })
delete "/movies/:id" =>"movies#destroy"
  #------------------------------
end
