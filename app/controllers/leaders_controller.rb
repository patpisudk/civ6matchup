class LeadersController < ApplicationController
  def index
    @leaders = Leader.page(params[:page]).per(10)

    render("leader_templates/index.html.erb")
  end

  def show
    @faction = Faction.new
    @leader = Leader.find(params.fetch("id_to_display"))

    render("leader_templates/show.html.erb")
  end

  def new_form
    @leader = Leader.new

    render("leader_templates/new_form.html.erb")
  end

  def create_row
    @leader = Leader.new

    @leader.name = params.fetch("name")
    @leader.description = params.fetch("description")
    @leader.leader_ability = params.fetch("leader_ability")
    @leader.leader_unit = params.fetch("leader_unit")
    @leader.leader_agenda = params.fetch("leader_agenda")

    if @leader.valid?
      @leader.save

      redirect_back(:fallback_location => "/leaders", :notice => "Leader created successfully.")
    else
      render("leader_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @leader = Leader.find(params.fetch("prefill_with_id"))

    render("leader_templates/edit_form.html.erb")
  end

  def update_row
    @leader = Leader.find(params.fetch("id_to_modify"))

    @leader.name = params.fetch("name")
    @leader.description = params.fetch("description")
    @leader.leader_ability = params.fetch("leader_ability")
    @leader.leader_unit = params.fetch("leader_unit")
    @leader.leader_agenda = params.fetch("leader_agenda")

    if @leader.valid?
      @leader.save

      redirect_to("/leaders/#{@leader.id}", :notice => "Leader updated successfully.")
    else
      render("leader_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @leader = Leader.find(params.fetch("id_to_remove"))

    @leader.destroy

    redirect_to("/leaders", :notice => "Leader deleted successfully.")
  end
end
