class CivsController < ApplicationController
  def index
    @q = Civ.ransack(params[:q])
    @civs = @q.result(:distinct => true).includes(:factions).page(params[:page]).per(10)

    render("civ_templates/index.html.erb")
  end

  def show
    @faction = Faction.new
    @civ = Civ.find(params.fetch("id_to_display"))

    render("civ_templates/show.html.erb")
  end

  def new_form
    @civ = Civ.new

    render("civ_templates/new_form.html.erb")
  end

  def create_row
    @civ = Civ.new

    @civ.name = params.fetch("name")
    @civ.unique_unit = params.fetch("unique_unit")
    @civ.unique_infrastructure = params.fetch("unique_infrastructure")
    @civ.description = params.fetch("description")
    @civ.civ_ability = params.fetch("civ_ability")

    if @civ.valid?
      @civ.save

      redirect_back(:fallback_location => "/civs", :notice => "Civ created successfully.")
    else
      render("civ_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @civ = Civ.find(params.fetch("prefill_with_id"))

    render("civ_templates/edit_form.html.erb")
  end

  def update_row
    @civ = Civ.find(params.fetch("id_to_modify"))

    @civ.name = params.fetch("name")
    @civ.unique_unit = params.fetch("unique_unit")
    @civ.unique_infrastructure = params.fetch("unique_infrastructure")
    @civ.description = params.fetch("description")
    @civ.civ_ability = params.fetch("civ_ability")

    if @civ.valid?
      @civ.save

      redirect_to("/civs/#{@civ.id}", :notice => "Civ updated successfully.")
    else
      render("civ_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @civ = Civ.find(params.fetch("id_to_remove"))

    @civ.destroy

    redirect_to("/civs", :notice => "Civ deleted successfully.")
  end
end
