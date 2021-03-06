class RoomsController < ApplicationController
  include CRUD

  private

  def obj_params
    params.require(:room).permit *%i(name tag)
  end

  def obj
    collection.find_by!(tag: params[:id])
  end

  def collection
    Room.all
  end
end
