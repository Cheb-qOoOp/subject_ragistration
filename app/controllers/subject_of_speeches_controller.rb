class SubjectOfSpeechesController < ApplicationController
  before_action :set_subject_of_speech, only: [:show, :edit, :update, :destroy]

  # GET /subject_of_speeches
  # GET /subject_of_speeches.json
  def index
    if current_user.admin?
      redirect_to rails_admin_url
    elsif current_user.reviewer?
      @q = SubjectOfSpeech.search(params[:q])
      @subject_of_speeches = @q.result(distinct: true)
    else
      # 自分で投稿した内容のみ表示する。
      # @subject_of_speeches = SubjectOfSpeech.all
      # @subject_of_speeches = current_user.subject_of_speeches.all
      @q        = current_user.subject_of_speeches.search(params[:q])
      # @q = SubjectOfSpeech.search(params[:q])
      @subject_of_speeches = @q.result(distinct: true)
      # binding.pry
    end
  end

  # GET /subject_of_speeches/1
  # GET /subject_of_speeches/1.json
  def show
    if current_user.member?
      # 自分で投稿した内容のみ表示する。
      @subject_of_speech = current_user.subject_of_speeches.find(params[:id])
    else
      @subject_of_speech = SubjectOfSpeech.find(params[:id])
    end

    @keywords = @subject_of_speech.keywords.split(",")
    # binding.pry
    @costars = eval(@subject_of_speech.costar)
  end

  # GET /subject_of_speeches/new
  def new
    @subject_of_speech = SubjectOfSpeech.new
  end

  # GET /subject_of_speeches/1/edit
  def edit
  end

  # POST /subject_of_speeches
  # POST /subject_of_speeches.json
  def create
    @subject_of_speech = SubjectOfSpeech.new(subject_of_speech_params)
    # binding.pry
    @subject_of_speech.costar = params["costar"].to_s

    respond_to do |format|
      if @subject_of_speech.save
        format.html { redirect_to @subject_of_speech, notice: 'Subject of speech was successfully created.' }
        format.json { render :show, status: :created, location: @subject_of_speech }
      else
        format.html { render :new }
        format.json { render json: @subject_of_speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_of_speeches/1
  # PATCH/PUT /subject_of_speeches/1.json
  def update
    respond_to do |format|
      if @subject_of_speech.update(subject_of_speech_params)
        format.html { redirect_to @subject_of_speech, notice: 'Subject of speech was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_of_speech }
      else
        format.html { render :edit }
        format.json { render json: @subject_of_speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_of_speeches/1
  # DELETE /subject_of_speeches/1.json
  def destroy
    @subject_of_speech.destroy
    respond_to do |format|
      format.html { redirect_to subject_of_speeches_url, notice: 'Subject of speech was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_of_speech
      @subject_of_speech = SubjectOfSpeech.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_of_speech_params
      params.require(:subject_of_speech).permit(:title, :sub_title, :user_id, :costar, :presentation_style, :category, :content, :keywords, :category_id)
    end
end
