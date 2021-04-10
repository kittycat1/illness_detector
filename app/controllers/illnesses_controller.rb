class IllnessesController < ApplicationController
  SECTIONS = ["Symptoms", "Prevention", "Causes", "Overview", "Type", "Complications", "Risk factors"]
  before_action :set_illness, only: %i[ show edit update destroy ]

  # GET /illnesses or /illnesses.json
  def index
    @illnesses = Illness.search_by_symptoms(params[:search]).limit(5) if params[:search]
  end

  # GET /illnesses/1 or /illnesses/1.json
  def show
    prepare_content
  end

  # GET /illnesses/new
  def new
    @illness = Illness.new
  end

  # GET /illnesses/1/edit
  def edit
  end

  # POST /illnesses or /illnesses.json
  def create
    @illness = Illness.new(illness_params)

    respond_to do |format|
      if @illness.save
        format.html { redirect_to @illness, notice: "Illness was successfully created." }
        format.json { render :show, status: :created, location: @illness }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /illnesses/1 or /illnesses/1.json
  def update
    respond_to do |format|
      if @illness.update(illness_params)
        format.html { redirect_to @illness, notice: "Illness was successfully updated." }
        format.json { render :show, status: :ok, location: @illness }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @illness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /illnesses/1 or /illnesses/1.json
  def destroy
    @illness.destroy
    respond_to do |format|
      format.html { redirect_to illnesses_url, notice: "Illness was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_illness
      @illness = Illness.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def illness_params
      params.require(:illness).permit(:name, :content, :symptoms)
    end

    def prepare_content
      content = @illness.content.gsub("\r", "").split("\n").map(&:presence).compact.map do |line|
        if SECTIONS.include?(line)
          "<h3>#{line}</h3>"
        else
          "<p>#{line}</p>"
        end
      end.join
      @illness.content = content
    end
end
