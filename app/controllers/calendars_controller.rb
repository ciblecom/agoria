class CalendarsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @calendars = Calendar.all
  end

  def new
    @calendar = Calendar.new
    @calendar.events.build
  end

  def create
    @calendar = current_user.calendars.new(params[:calendar])
    if @calendar.save
      redirect_to calendars_url, :notice => "Successfully created calendar."
    else
      render :action => 'new'
    end
  end

  def edit
    @calendar = Calendar.find(params[:id])
    @events = @calendar.events
  end

  def update
    @calendar = Calendar.find(params[:id])
    
    if @calendar.update_attributes(params[:calendar])
      redirect_to calendars_url, :notice  => "Successfully updated calendar."
    else
      render :action => 'edit'
    end
  end
end
