class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice]="The event has been added"
			redirect_to events_path
		else
			render 'new'
		end
	end

	private

	def event_params
		params.require(:event).permit(:event_name, :event_description, :event_date_from, :event_date_to, :event_price_before_deadline, :event_price_after_deadline, :event_deadline)
	end


end
