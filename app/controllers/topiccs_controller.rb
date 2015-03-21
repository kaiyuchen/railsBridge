class TopiccsController < ApplicationController
  before_action :set_topicc, only: [:show, :edit, :update, :destroy]

  # GET /topiccs
  # GET /topiccs.json
  def index
    @topiccs = Topicc.all
  end

  # GET /topiccs/1
  # GET /topiccs/1.json
  def show
  end

  # GET /topiccs/new
  def new
    @topicc = Topicc.new
  end

  # GET /topiccs/1/edit
  def edit
  end

  # POST /topiccs
  # POST /topiccs.json
  def create
    @topicc = Topicc.new(topicc_params)

    respond_to do |format|
      if @topicc.save
        format.html { redirect_to @topicc, notice: 'Topicc was successfully created.' }
        format.json { render :show, status: :created, location: @topicc }
      else
        format.html { render :new }
        format.json { render json: @topicc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topiccs/1
  # PATCH/PUT /topiccs/1.json
  def update
    respond_to do |format|
      if @topicc.update(topicc_params)
        format.html { redirect_to @topicc, notice: 'Topicc was successfully updated.' }
        format.json { render :show, status: :ok, location: @topicc }
      else
        format.html { render :edit }
        format.json { render json: @topicc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topiccs/1
  # DELETE /topiccs/1.json
  def destroy
    @topicc.destroy
    respond_to do |format|
      format.html { redirect_to topiccs_url, notice: 'Topicc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topicc
      @topicc = Topicc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topicc_params
      params.require(:topicc).permit(:title, :desc)
    end
end
