class GuestsController < ApplicationController
  

  def index
  
  end
  
  def new
  	@guest = Guest.new
  end

  def create
  	
  	@guest = Guest.new(guest_params)
  	
  	if @guest.save
      flash[:notice]="The guest has been added to the event"
      redirect_to guest_path(@guest)
    else
      render 'new'
    end
  end

  


  	def show
  		@guest = Guest.find(params[:id])
  	end

 

  private

  def guest_params
  	params.require(:guest).permit(:guest_name, :guest_address_1, :guest_address_2, :guest_city, :guest_state, :guest_zip, :guest_phone_number, :guest_email, :event_id)
  end

end
