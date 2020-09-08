class EventsController < ApplicationController

  def index
    @events = Event.all.order('time DESC')
  end
end
