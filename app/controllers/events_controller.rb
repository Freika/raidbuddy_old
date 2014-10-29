# Events controller
class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = set_event
  end

  def edit
    @event = set_event
  end

  def new
    @event = Event.new
  end

  def update
    @event = set_event
    if @event.update(event_params)
      redirect_to @event, notice: 'Событие обновлено.'
    else
      render :edit
    end
  end

  def destroy
    @event = set_event
    @event.destroy
    redirect_to @events, notice: 'Событие удалено'
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to @event, notice: 'Событие обновлено.'
    else
      render :edit
    end
  end

  private

  def set_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :encounter_id, :startdate, :starttime,
                                  :endtime, :description, :playstyle, :tanks,
                                  :healers, :dps, :loottype, :min_level,
                                  :min_item_level)
  end
end
