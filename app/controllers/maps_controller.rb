class MapsController < ApplicationController
  def index
    @q = Map.ransack(params[:q])
    @maps = @q.result(:distinct => true).includes(:matches).page(params[:page]).per(10)

    render("map_templates/index.html.erb")
  end

  def show
    @match = Match.new
    @map = Map.find(params.fetch("id_to_display"))

    render("map_templates/show.html.erb")
  end

  def new_form
    @map = Map.new

    render("map_templates/new_form.html.erb")
  end

  def create_row
    @map = Map.new

    @map.name = params.fetch("name")
    @map.land_weight = params.fetch("land_weight")
    @map.water_weight = params.fetch("water_weight")

    if @map.valid?
      @map.save

      redirect_back(:fallback_location => "/maps", :notice => "Map created successfully.")
    else
      render("map_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @map = Map.find(params.fetch("prefill_with_id"))

    render("map_templates/edit_form.html.erb")
  end

  def update_row
    @map = Map.find(params.fetch("id_to_modify"))

    @map.name = params.fetch("name")
    @map.land_weight = params.fetch("land_weight")
    @map.water_weight = params.fetch("water_weight")

    if @map.valid?
      @map.save

      redirect_to("/maps/#{@map.id}", :notice => "Map updated successfully.")
    else
      render("map_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @map = Map.find(params.fetch("id_to_remove"))

    @map.destroy

    redirect_to("/maps", :notice => "Map deleted successfully.")
  end
end
