class FactionsController < ApplicationController
  def index
    @q = Faction.ransack(params[:q])
    @factions = @q.result(:distinct => true).includes(:civ, :leader, :matches).page(params[:page]).per(10)

    render("faction_templates/index.html.erb")
  end

  def show
    @match = Match.new
    @faction = Faction.find(params.fetch("id_to_display"))

    render("faction_templates/show.html.erb")
  end

  def new_form
    @faction = Faction.new

    render("faction_templates/new_form.html.erb")
  end

  def create_row
    @faction = Faction.new

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_back(:fallback_location => "/factions", :notice => "Faction created successfully.")
    else
      render("faction_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_civ
    @faction = Faction.new

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_to("/civs/#{@faction.civ_id}", notice: "Faction created successfully.")
    else
      render("faction_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_leader
    @faction = Faction.new

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_to("/leaders/#{@faction.leader_id}", notice: "Faction created successfully.")
    else
      render("faction_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @faction = Faction.find(params.fetch("prefill_with_id"))

    render("faction_templates/edit_form.html.erb")
  end

  def update_row
    @faction = Faction.find(params.fetch("id_to_modify"))

    @faction.civ_id = params.fetch("civ_id")
    @faction.leader_id = params.fetch("leader_id")
    @faction.dom_score_land = params.fetch("dom_score_land")
    @faction.dom_score_water = params.fetch("dom_score_water")
    @faction.dom_def_land = params.fetch("dom_def_land")
    @faction.dom_def_water = params.fetch("dom_def_water")
    @faction.sci_score_land = params.fetch("sci_score_land")
    @faction.sci_score_water = params.fetch("sci_score_water")
    @faction.sci_def_land = params.fetch("sci_def_land")
    @faction.sci_def_water = params.fetch("sci_def_water")
    @faction.cul_score_land = params.fetch("cul_score_land")
    @faction.cul_score_water = params.fetch("cul_score_water")
    @faction.cul_def_land = params.fetch("cul_def_land")
    @faction.cul_def_water = params.fetch("cul_def_water")
    @faction.rel_score_land = params.fetch("rel_score_land")
    @faction.rel_score_water = params.fetch("rel_score_water")
    @faction.rel_def_land = params.fetch("rel_def_land")
    @faction.rel_def_water = params.fetch("rel_def_water")
    @faction.dip_score_land = params.fetch("dip_score_land")
    @faction.dip_score_water = params.fetch("dip_score_water")
    @faction.dip_def_land = params.fetch("dip_def_land")
    @faction.dip_def_water = params.fetch("dip_def_water")

    if @faction.valid?
      @faction.save

      redirect_to("/factions/#{@faction.id}", :notice => "Faction updated successfully.")
    else
      render("faction_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_civ
    @faction = Faction.find(params.fetch("id_to_remove"))

    @faction.destroy

    redirect_to("/civs/#{@faction.civ_id}", notice: "Faction deleted successfully.")
  end

  def destroy_row_from_leader
    @faction = Faction.find(params.fetch("id_to_remove"))

    @faction.destroy

    redirect_to("/leaders/#{@faction.leader_id}", notice: "Faction deleted successfully.")
  end

  def destroy_row
    @faction = Faction.find(params.fetch("id_to_remove"))

    @faction.destroy

    redirect_to("/factions", :notice => "Faction deleted successfully.")
  end
end
