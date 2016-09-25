class TaskKeepersController < ApplicationController
  before_action :set_task_keeper, only: [:show, :edit, :update, :destroy]

  # GET /task_keepers
  # GET /task_keepers.json
  def index
    @task_keepers = TaskKeeper.all
  end

  # GET /task_keepers/1
  # GET /task_keepers/1.json
  def show
  end

  # GET /task_keepers/new
  def new
    @task_keeper = TaskKeeper.new
  end

  # GET /task_keepers/1/edit
  def edit
  end

  # POST /task_keepers
  # POST /task_keepers.json
  def create
    @task_keeper = TaskKeeper.new(task_keeper_params)

    respond_to do |format|
      if @task_keeper.save
        format.html { redirect_to @task_keeper, notice: 'Task keeper was successfully created.' }
        format.json { render :show, status: :created, location: @task_keeper }
      else
        format.html { render :new }
        format.json { render json: @task_keeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_keepers/1
  # PATCH/PUT /task_keepers/1.json
  def update
    respond_to do |format|
      if @task_keeper.update(task_keeper_params)
        format.html { redirect_to @task_keeper, notice: 'Task keeper was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_keeper }
      else
        format.html { render :edit }
        format.json { render json: @task_keeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_keepers/1
  # DELETE /task_keepers/1.json
  def destroy
    @task_keeper.destroy
    respond_to do |format|
      format.html { redirect_to task_keepers_url, notice: 'Task keeper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_keeper
      @task_keeper = TaskKeeper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_keeper_params
      params.require(:task_keeper).permit(:title, :description)
    end
end
