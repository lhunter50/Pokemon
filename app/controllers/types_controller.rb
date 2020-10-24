class TypesController < ApplicationController
  def index
    @type = Type.all
  end

  def show
  end
end
