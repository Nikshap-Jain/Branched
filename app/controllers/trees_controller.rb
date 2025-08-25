class TreesController < ApplicationController
  layout "trees"
  before_action :set_tree, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ new edit update destroy ]
  before_action :ensure_owner, only: %i[ edit update destroy ]


  # GET /trees or /trees.json
  def index
    @trees = current_user.trees if user_signed_in?
    @trees ||= Tree.none # If not signed in, show no trees
  end

  # GET /trees/1 or /trees/1.json
  def show
    # Trees are publicly viewable by anyone with the URL
  end

  # GET /trees/new
  def new
    @tree = Tree.new
  end

  # GET /trees/1/edit
  def edit
  end

  # POST /trees or /trees.json
  def create
    @tree = Tree.new(tree_params)
    @tree.user = current_user # Automatically assign current user

    respond_to do |format|
      if @tree.save
        format.html { redirect_to @tree, notice: "Tree was successfully created." }
        format.json { render :show, status: :created, location: @tree }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trees/1 or /trees/1.json
  def update
    respond_to do |format|
      if @tree.update(tree_params)
        format.html { redirect_to @tree, notice: "Tree was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @tree }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trees/1 or /trees/1.json
  def destroy
    @tree.destroy!

    respond_to do |format|
      format.html { redirect_to trees_path, notice: "Tree was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree
      @tree= Tree.friendly.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def tree_params
      params.require(:tree).permit(:name, :instagram, :youtube, :x, :style)
    end
    
    # Check if the current user owns the tree
    def ensure_owner
      unless @tree.user == current_user
        redirect_to trees_path, alert: "You can only modify your own trees"
      end
    end
end
