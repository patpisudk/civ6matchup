class MatchesController < ApplicationController
  def index
    @matches = Match.all

    render("match_templates/index.html.erb")
  end

  def show
    @match = Match.find(params.fetch("id_to_display"))

    render("match_templates/show.html.erb")
  end

  def new_form
    @match = Match.new

    render("match_templates/new_form.html.erb")
  end

  def create_row
    @match = Match.new

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.faction08_id = params.fetch("faction08_id")
    @match.faction09_id = params.fetch("faction09_id")
    @match.faction10_id = params.fetch("faction10_id")
    @match.faction11_id = params.fetch("faction11_id")
    @match.faction12_id = params.fetch("faction12_id")

    if @match.valid?
      @match.save

      redirect_back(:fallback_location => "/matches", :notice => "Match created successfully.")
    else
      render("match_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_faction
    @match = Match.new

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.faction08_id = params.fetch("faction08_id")
    @match.faction09_id = params.fetch("faction09_id")
    @match.faction10_id = params.fetch("faction10_id")
    @match.faction11_id = params.fetch("faction11_id")
    @match.faction12_id = params.fetch("faction12_id")

    if @match.valid?
      @match.save

      redirect_to("/factions/#{@match.faction01_id}", notice: "Match created successfully.")
    else
      render("match_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_map
    @match = Match.new

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.faction08_id = params.fetch("faction08_id")
    @match.faction09_id = params.fetch("faction09_id")
    @match.faction10_id = params.fetch("faction10_id")
    @match.faction11_id = params.fetch("faction11_id")
    @match.faction12_id = params.fetch("faction12_id")

    if @match.valid?
      @match.save

      redirect_to("/maps/#{@match.map_id}", notice: "Match created successfully.")
    else
      render("match_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @match = Match.find(params.fetch("prefill_with_id"))

    render("match_templates/edit_form.html.erb")
  end

  def update_row
    @match = Match.find(params.fetch("id_to_modify"))

    @match.map_id = params.fetch("map_id")
    @match.faction01_id = params.fetch("faction01_id")
    @match.faction02_id = params.fetch("faction02_id")
    @match.faction03_id = params.fetch("faction03_id")
    @match.faction04_id = params.fetch("faction04_id")
    @match.faction05_id = params.fetch("faction05_id")
    @match.faction06_id = params.fetch("faction06_id")
    @match.faction07_id = params.fetch("faction07_id")
    @match.faction08_id = params.fetch("faction08_id")
    @match.faction09_id = params.fetch("faction09_id")
    @match.faction10_id = params.fetch("faction10_id")
    @match.faction11_id = params.fetch("faction11_id")
    @match.faction12_id = params.fetch("faction12_id")

    if @match.valid?
      @match.save

      redirect_to("/matches/#{@match.id}", :notice => "Match updated successfully.")
    else
      render("match_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_faction01
    @match = Match.find(params.fetch("id_to_remove"))

    @match.destroy

    redirect_to("/factions/#{@match.faction01_id}", notice: "Match deleted successfully.")
  end

  def destroy_row_from_map
    @match = Match.find(params.fetch("id_to_remove"))

    @match.destroy

    redirect_to("/maps/#{@match.map_id}", notice: "Match deleted successfully.")
  end

  def destroy_row
    @match = Match.find(params.fetch("id_to_remove"))

    @match.destroy

    redirect_to("/matches", :notice => "Match deleted successfully.")
  end
end
