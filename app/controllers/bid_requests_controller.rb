class BidRequestsController < ApplicationController
  before_action :set_bid_request, only: [:show, :edit, :update, :destroy]

  # GET /bid_requests
  # GET /bid_requests.json
  def index
    @bid_requests = BidRequest.all
  end

  # GET /bid_requests/1
  # GET /bid_requests/1.json
  def show
  end

  # GET /bid_requests/new
  def new
    @bid_request = BidRequest.new
  end

  # GET /bid_requests/1/edit
  def edit
  end

  # POST /bid_requests
  # POST /bid_requests.json
  def create
    @bid_request = BidRequest.new(bid_request_params)

    respond_to do |format|
      if @bid_request.save
        format.html { redirect_to @bid_request, notice: 'Bid request was successfully created.' }
        format.json { render :show, status: :created, location: @bid_request }
      else
        format.html { render :new }
        format.json { render json: @bid_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_requests/1
  # PATCH/PUT /bid_requests/1.json
  def update
    respond_to do |format|
      if @bid_request.update(bid_request_params)
        format.html { redirect_to @bid_request, notice: 'Bid request was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid_request }
      else
        format.html { render :edit }
        format.json { render json: @bid_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_requests/1
  # DELETE /bid_requests/1.json
  def destroy
    @bid_request.destroy
    respond_to do |format|
      format.html { redirect_to bid_requests_url, notice: 'Bid request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_request
      @bid_request = BidRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_request_params
      params.require(:bid_request).permit(:user_id, :pick_up_street, :pick_up_city_state, :pick_up_zip, :drop_off_street, :drop_off_city_state, :drop_off_zip, :pick_up_date, :pick_up_time, :drop_off_date, :drop_off_time)
    end
end
