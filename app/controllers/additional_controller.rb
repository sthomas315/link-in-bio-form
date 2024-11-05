
class AdditionalController < ApplicationController
  def add_items
  

    render({ :template => "item_templates/new" })
  end
