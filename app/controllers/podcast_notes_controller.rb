class PodcastNotesController < ApplicationController
  before_action :set_podcast_note, only: [:show, :edit, :update, :destroy]

  # GET /podcast_notes
  # GET /podcast_notes.json
  def index
    @podcast_notes = PodcastNote.all
  end

  # GET /podcast_notes/1
  # GET /podcast_notes/1.json
  def show
  end

  # GET /podcast_notes/new
  def new
    @podcast_note = PodcastNote.new
  end

  # GET /podcast_notes/1/edit
  def edit
  end

  # POST /podcast_notes
  # POST /podcast_notes.json
  def create
    @podcast_note = PodcastNote.new(podcast_note_params)

    respond_to do |format|
      if @podcast_note.save
        format.html { redirect_to @podcast_note, notice: 'Podcast note was successfully created.' }
        format.json { render :show, status: :created, location: @podcast_note }
      else
        format.html { render :new }
        format.json { render json: @podcast_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /podcast_notes/1
  # PATCH/PUT /podcast_notes/1.json
  def update
    respond_to do |format|
      if @podcast_note.update(podcast_note_params)
        format.html { redirect_to @podcast_note, notice: 'Podcast note was successfully updated.' }
        format.json { render :show, status: :ok, location: @podcast_note }
      else
        format.html { render :edit }
        format.json { render json: @podcast_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podcast_notes/1
  # DELETE /podcast_notes/1.json
  def destroy
    @podcast_note.destroy
    respond_to do |format|
      format.html { redirect_to podcast_notes_url, notice: 'Podcast note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_podcast_note
      @podcast_note = PodcastNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def podcast_note_params
      params.require(:podcast_note).permit(:title, :note_body)
    end
end
