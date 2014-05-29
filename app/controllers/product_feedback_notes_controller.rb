class ProductFeedbackNotesController < ApplicationController
  before_action :set_product_feedback_note, only: [:show, :edit, :update, :destroy]

  # GET /product_feedback_notes
  # GET /product_feedback_notes.json
  def index
    @product_feedback_notes = ProductFeedbackNote.all
  end

  # GET /product_feedback_notes/1
  # GET /product_feedback_notes/1.json
  def show
  end

  # GET /product_feedback_notes/new
  def new
    @product_feedback_note = ProductFeedbackNote.new
  end

  # GET /product_feedback_notes/1/edit
  def edit
  end

  # POST /product_feedback_notes
  # POST /product_feedback_notes.json
  def create
    @product_feedback_note = ProductFeedbackNote.new(product_feedback_note_params)

    respond_to do |format|
      if @product_feedback_note.save
        format.html { redirect_to @product_feedback_note, notice: 'Product feedback note was successfully created.' }
        format.json { render :show, status: :created, location: @product_feedback_note }
      else
        format.html { render :new }
        format.json { render json: @product_feedback_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_feedback_notes/1
  # PATCH/PUT /product_feedback_notes/1.json
  def update
    respond_to do |format|
      if @product_feedback_note.update(product_feedback_note_params)
        format.html { redirect_to @product_feedback_note, notice: 'Product feedback note was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_feedback_note }
      else
        format.html { render :edit }
        format.json { render json: @product_feedback_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_feedback_notes/1
  # DELETE /product_feedback_notes/1.json
  def destroy
    @product_feedback_note.destroy
    respond_to do |format|
      format.html { redirect_to product_feedback_notes_url, notice: 'Product feedback note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_feedback_note
      @product_feedback_note = ProductFeedbackNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_feedback_note_params
      params.require(:product_feedback_note).permit(:product_id, :user_id, :feedback_id, :content)
    end
end
