# encoding: utf-8
class CalendarsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @calendars = Calendar.all
  end
  
  def show
    @calendar = Calendar.find(params[:id])
    @calname = @calendar.name+'_'+@calendar.id.to_s
    respond_to do |format|
      format.pdf do
          render :pdf => "file_name",
                 :template => 'calendars/show.pdf.erb',
                 :page_size  => 'A3',
                 #:show_as_html => true,
                 #:save_to_file  => Rails.root.join('public/pdfs', "#{@calname}.pdf"),
                 :margin => {:top   => 5,                     # default 10 (mm)
                           :bottom  => 5,
                           :left    => 5,
                           :right   => 5},
                 :no_background => true,
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
