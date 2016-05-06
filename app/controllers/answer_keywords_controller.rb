class AnswerKeywordsController < ApplicationController
  before_action :set_answer_keyword, only: [:show, :edit, :update, :destroy]

  # GET /answer_keywords
  # GET /answer_keywords.json
  def index
    @answer_keywords = AnswerKeyword.all
  end

  # GET /answer_keywords/1
  # GET /answer_keywords/1.json
  def show
  end

  # GET /answer_keywords/new
  def new
    @answer_keyword = AnswerKeyword.new
  end

  # GET /answer_keywords/1/edit
  def edit
  end

  # POST /answer_keywords
  # POST /answer_keywords.json
  def create
    @answer_keyword = AnswerKeyword.new(answer_keyword_params)

    respond_to do |format|
      if @answer_keyword.save
        format.html { redirect_to @answer_keyword, notice: 'Answer keyword was successfully created.' }
        format.json { render :show, status: :created, location: @answer_keyword }
      else
        format.html { render :new }
        format.json { render json: @answer_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_keywords/1
  # PATCH/PUT /answer_keywords/1.json
  def update
    respond_to do |format|
      if @answer_keyword.update(answer_keyword_params)
        format.html { redirect_to @answer_keyword, notice: 'Answer keyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_keyword }
      else
        format.html { render :edit }
        format.json { render json: @answer_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_keywords/1
  # DELETE /answer_keywords/1.json
  def destroy
    @answer_keyword.destroy
    respond_to do |format|
      format.html { redirect_to answer_keywords_url, notice: 'Answer keyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_keyword
      @answer_keyword = AnswerKeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_keyword_params
      params.require(:answer_keyword).permit(:text, :case_sensitive, :order, :question_id)
    end
end
