class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def add_item_form

    render({ :template => "item_templates/add_form" })
  end

  def add_new_item
    new_item = Item.new

    new_item.link_url = params.fetch("first_url")
    new_item.link_description = params.fetch("link_description")
    new_item.thumbnail_url = params.fetch("last_url")

    new_item.save

    redirect_to("/")
  end

end
