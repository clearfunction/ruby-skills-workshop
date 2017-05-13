class ParkingTicketsController < ApplicationController
  before_action :set_parking_ticket, only: [:show, :edit, :update, :destroy]

  # GET /parking_tickets
  # GET /parking_tickets.json
  def index
    @parking_tickets = ParkingTicket.all
  end

  # GET /parking_tickets/1
  # GET /parking_tickets/1.json
  def show
  end

  # GET /parking_tickets/new
  def new
    @parking_ticket = ParkingTicket.new
  end

  # GET /parking_tickets/1/edit
  def edit
  end

  # POST /parking_tickets
  # POST /parking_tickets.json
  def create
    @parking_ticket = ParkingTicket.new(parking_ticket_params)

    respond_to do |format|
      if @parking_ticket.save
        format.html { redirect_to @parking_ticket, notice: 'Parking ticket was successfully created.' }
        format.json { render :show, status: :created, location: @parking_ticket }
      else
        format.html { render :new }
        format.json { render json: @parking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_tickets/1
  # PATCH/PUT /parking_tickets/1.json
  def update
    respond_to do |format|
      if @parking_ticket.update(parking_ticket_params)
        format.html { redirect_to @parking_ticket, notice: 'Parking ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_ticket }
      else
        format.html { render :edit }
        format.json { render json: @parking_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_tickets/1
  # DELETE /parking_tickets/1.json
  def destroy
    @parking_ticket.destroy
    respond_to do |format|
      format.html { redirect_to parking_tickets_url, notice: 'Parking ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_ticket
      @parking_ticket = ParkingTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_ticket_params
      params.require(:parking_ticket).permit(:fee, :reporter, :description, :student_id)
    end
end
