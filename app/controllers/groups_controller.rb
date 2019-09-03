class GroupsController < OpenReadController
  before_action :set_group, only: [:update, :destroy]
  before_action :set_group_show, only: [:show]

  # GET /groups
  def index
    @groups = Group.all

    render json: @groups
  end

  # GET /groups/1
  def show
    render json: @group
  end

  # POST /groups
  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      render json: @group, status: :created, location: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # Set the group for update and delete where the user needs to be the creator
  def set_group
    @group = current_user.groups.find(params[:id])
  end

  # Set the group for any user to show group
  def set_group_show
    @group = Group.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def group_params
    params.require(:group).permit(:sport, :city, :state, :date, :time, :about, :user_id)
  end
end
