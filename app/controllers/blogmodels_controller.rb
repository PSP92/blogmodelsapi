class BlogmodelsController < ApplicationController
  before_action :set_blogmodel, only: [:show, :update, :destroy]

  # GET /blogmodels
  def index
    @blogmodels = Blogmodel.all

    render json: @blogmodels
  end

  # GET /blogmodels/1
  def show
    render json: @blogmodel
  end

  # POST /blogmodels
  def create
    @blogmodel = Blogmodel.new(blogmodel_params)

    if @blogmodel.save
      render json: @blogmodel, status: :created, location: @blogmodel
    else
      render json: @blogmodel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogmodels/1
  def update
    if @blogmodel.update(blogmodel_params)
      render json: @blogmodel
    else
      render json: @blogmodel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogmodels/1
  def destroy
    @blogmodel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogmodel
      @blogmodel = Blogmodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blogmodel_params
      params.require(:blogmodel).permit(:title, :body)
    end
end
