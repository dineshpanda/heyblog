Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "articles#index"
  # Routes for the Png resource:

  # CREATE
  get("/pngs/new", { :controller => "pngs", :action => "new_form" })
  post("/create_png", { :controller => "pngs", :action => "create_row" })

  # READ
  get("/pngs", { :controller => "pngs", :action => "index" })
  get("/pngs/:id_to_display", { :controller => "pngs", :action => "show" })

  # UPDATE
  get("/pngs/:prefill_with_id/edit", { :controller => "pngs", :action => "edit_form" })
  post("/update_png/:id_to_modify", { :controller => "pngs", :action => "update_row" })

  # DELETE
  get("/delete_png/:id_to_remove", { :controller => "pngs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Jpg resource:

  # CREATE
  get("/jpgs/new", { :controller => "jpgs", :action => "new_form" })
  post("/create_jpg", { :controller => "jpgs", :action => "create_row" })
  post("/create_jpg_from_photo", { :controller => "jpgs", :action => "create_row_from_photo" })

  # READ
  get("/jpgs", { :controller => "jpgs", :action => "index" })
  get("/jpgs/:id_to_display", { :controller => "jpgs", :action => "show" })

  # UPDATE
  get("/jpgs/:prefill_with_id/edit", { :controller => "jpgs", :action => "edit_form" })
  post("/update_jpg/:id_to_modify", { :controller => "jpgs", :action => "update_row" })

  # DELETE
  get("/delete_jpg/:id_to_remove", { :controller => "jpgs", :action => "destroy_row" })
  get("/delete_jpg_from_photo/:id_to_remove", { :controller => "jpgs", :action => "destroy_row_from_photo" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  post("/create_photo", { :controller => "photos", :action => "create_row" })
  post("/create_photo_from_comment", { :controller => "photos", :action => "create_row_from_comment" })

  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:id_to_display", { :controller => "photos", :action => "show" })

  # UPDATE
  get("/photos/:prefill_with_id/edit", { :controller => "photos", :action => "edit_form" })
  post("/update_photo/:id_to_modify", { :controller => "photos", :action => "update_row" })

  # DELETE
  get("/delete_photo/:id_to_remove", { :controller => "photos", :action => "destroy_row" })
  get("/delete_photo_from_comment/:id_to_remove", { :controller => "photos", :action => "destroy_row_from_comment" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })
  post("/create_comment_from_article", { :controller => "comments", :action => "create_row_from_article" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_article/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_article" })

  #------------------------------

  # Routes for the Article resource:

  # CREATE
  get("/articles/new", { :controller => "articles", :action => "new_form" })
  post("/create_article", { :controller => "articles", :action => "create_row" })

  # READ
  get("/articles", { :controller => "articles", :action => "index" })
  get("/articles/:id_to_display", { :controller => "articles", :action => "show" })

  # UPDATE
  get("/articles/:prefill_with_id/edit", { :controller => "articles", :action => "edit_form" })
  post("/update_article/:id_to_modify", { :controller => "articles", :action => "update_row" })

  # DELETE
  get("/delete_article/:id_to_remove", { :controller => "articles", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
