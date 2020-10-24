class StatsController < ApplicationController
  def index
    @stat = Stat.all
  end

  def show
  end
end
