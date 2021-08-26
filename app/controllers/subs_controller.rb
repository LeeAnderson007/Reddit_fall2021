class SubsController < ApplicationController
  before_action :set_sub, only:[:show,:update,:edit,:destroy]
  def index
    # With rails mvc rails will look for the fill named index.html.erb
    #subs
    #getall subs
    subs = Sub.all # interacting with model
    render component:"Subs", props:{subs:subs} #controller is now handing subs to react components
  end

  def gettop5
    subs = Sub.all.limit(5)
  end

  def show
    sub = Sub.find(params[:id]) # params comes from the get :id in the routes folder
    render component: "Sub", props:{sub:@sub}
    # to test it, do below
    #render components: "Sub", props:{subs:sub}
  end

  def new
    render "SubsNew"#be the form
  end

  def create
    #render "SubNew" #be the form
    @sub = Sub.new(sub_params)
    if(@sub.save)
      redirect_to root_path
    else
      #TODO 
    end
  end

  def edit
    # sub = Sub.find(params[:id])
  end

  def uodate
    #@sub = Sub.find(params[:id])
  end

  #set_sub isnt needed to be put here since we have the before_action being called at the beginning
  def destroy
    #@sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to root_path
  end

  private

  def sub_params
    params.require(:sub).permit(:name)
  end

  def set_sub
    @sub = Sub.find(params[:id])
  end
end

