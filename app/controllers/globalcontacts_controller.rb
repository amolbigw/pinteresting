class GlobalcontactsController < ApplicationController
  before_action :set_globalcontact, only: [:show, :edit, :update, :destroy]

  # GET /globalcontacts
  # GET /globalcontacts.json
  def index
    @globalcontacts = Globalcontact.all
  end

  # GET /globalcontacts/1
  # GET /globalcontacts/1.json
  def show
  end

  # GET /globalcontacts/new
  def new
    @globalcontact = Globalcontact.new
  end

  # GET /globalcontacts/1/edit
  def edit
  end

  # POST /globalcontacts
  # POST /globalcontacts.json
  def create
    @globalcontact = Globalcontact.new(globalcontact_params)

    respond_to do |format|
      if @globalcontact.save
        format.html { redirect_to @globalcontact, notice: 'Globalcontact was successfully created.' }
        format.json { render :show, status: :created, location: @globalcontact }
      else
        format.html { render :new }
        format.json { render json: @globalcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /globalcontacts/1
  # PATCH/PUT /globalcontacts/1.json
  def update
    respond_to do |format|
      if @globalcontact.update(globalcontact_params)
        format.html { redirect_to @globalcontact, notice: 'Globalcontact was successfully updated.' }
        format.json { render :show, status: :ok, location: @globalcontact }
      else
        format.html { render :edit }
        format.json { render json: @globalcontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /globalcontacts/1
  # DELETE /globalcontacts/1.json
  def destroy
    @globalcontact.destroy
    respond_to do |format|
      format.html { redirect_to globalcontacts_url, notice: 'Globalcontact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_globalcontact
      @globalcontact = Globalcontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def globalcontact_params
      params.require(:globalcontact).permit(:firstname, :lastname, :email, :twitterid, :linkedin, :facebook)
    end
end
