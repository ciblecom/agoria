# encoding: utf-8
class CalendarsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @calendars = current_user.calendars.order('created_at DESC').all
  end
  
  def show
    @calendar = Calendar.find(params[:id])
    @calname = @calendar.name+'_'+@calendar.id.to_s
    respond_to do |format|
      format.pdf do
          render :page_size => 'A1',
                  :pdf => @calname,
                  #:disposition => 'attachment',
                  :dpi => 300,
                  :template => 'calendars/show.pdf.erb',
                  :save_to_file  => Rails.root.join('public/pdfs', "#{@calname}.pdf"),
                  :margin => {:top   => 5,
                             :bottom  => 5,
                             :left    => 5,
                             :right   => 5},
                  :no_background => false,
                  :lowquality  => true         
      end
    end    
  end

  def new
    @calendar = Calendar.new
    @calendar.events.build
  end

  def create
    @calendar = current_user.calendars.new(params[:calendar])
    if @calendar.save
      redirect_to calendars_url, :notice => "Calendrier correctement créé."
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
      redirect_to calendars_url, :notice  => "Calendrier correctement mis à jour."
    else
      render :action => 'edit'
    end
  end
end
