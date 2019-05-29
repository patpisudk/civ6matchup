Rails.application.routes.draw do
  # Routes for the Leader resource:

  # CREATE
  get("/leaders/new", { :controller => "leaders", :action => "new_form" })
  post("/create_leader", { :controller => "leaders", :action => "create_row" })

  # READ
  get("/leaders", { :controller => "leaders", :action => "index" })
  get("/leaders/:id_to_display", { :controller => "leaders", :action => "show" })

  # UPDATE
  get("/leaders/:prefill_with_id/edit", { :controller => "leaders", :action => "edit_form" })
  post("/update_leader/:id_to_modify", { :controller => "leaders", :action => "update_row" })

  # DELETE
  get("/delete_leader/:id_to_remove", { :controller => "leaders", :action => "destroy_row" })

  #------------------------------

  # Routes for the Civ resource:

  # CREATE
  get("/civs/new", { :controller => "civs", :action => "new_form" })
  post("/create_civ", { :controller => "civs", :action => "create_row" })

  # READ
  get("/civs", { :controller => "civs", :action => "index" })
  get("/civs/:id_to_display", { :controller => "civs", :action => "show" })

  # UPDATE
  get("/civs/:prefill_with_id/edit", { :controller => "civs", :action => "edit_form" })
  post("/update_civ/:id_to_modify", { :controller => "civs", :action => "update_row" })

  # DELETE
  get("/delete_civ/:id_to_remove", { :controller => "civs", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
