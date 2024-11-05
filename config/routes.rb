Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", {:controller => "items", :action => "add_item_form"})

  post("/user_item", {:controller => "items", :action => "add_new_item" })
end
