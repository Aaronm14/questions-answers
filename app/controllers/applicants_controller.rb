class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]

  # GET /applicants
  # GET /applicants.json
  def index
    @applicants = Applicant.all

    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first
  end

  # GET /applicants/1
  # GET /applicants/1.json
  def show
    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first
  end

  # GET /applicants/new
  def new
    @applicant = Applicant.new

    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first
  end

  # GET /applicants/1/edit
  def edit
    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first
  end

  # POST /applicants
  # POST /applicants.json
  def create
    @applicant = Applicant.new(applicant_params)
    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first

    respond_to do |format|
      if @applicant.save
        format.html { redirect_to @applicant, notice: 'Applicant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @applicant }
      else
        format.html { render action: 'new' }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicants/1
  # PATCH/PUT /applicants/1.json
  def update
    @question1 = Question.where(:number => 1).first
    @question2 = Question.where(:number => 2).first
    @question3 = Question.where(:number => 3).first

    respond_to do |format|
      if @applicant.update(applicant_params)
        format.html { redirect_to @applicant, notice: 'Applicant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @applicant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicants/1
  # DELETE /applicants/1.json
  def destroy
    @applicant.destroy
    respond_to do |format|
      format.html { redirect_to applicants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_params
      params.require(:applicant).permit(:first_name, :last_name, :email, :answer1, :answer2, :answer3)
    end
end
