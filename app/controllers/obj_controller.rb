class ObjController < ApplicationController

  def new
  end

  def create
    @obj = Obj.new(obj_params)
    if @obj.save!
      redirect_to controller: "calories", action: "index"
    else
      redirect_to root_path
    end
  end

  private

  def obj_params
    params.require(:obj).permit(:obj, :calorie)
  end
end
