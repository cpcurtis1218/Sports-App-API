class MembershipsController < ProtectedController
  before_action :set_membership, only: :destroy
  before_action :set_user, only: :show

  # GET /memberships
  # def index
  #   @memberships = Membership.all

  #   render json: @memberships
  # end

  # GET all memberships for a user, based on user_id
  # GET /memberships/1
  def show
    render json: @user
  end

  # POST /memberships
  def create
    @membership = current_user.memberships.build(membership_params)

    if @membership.save
      render json: @membership, status: :created, location: @membership
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /memberships/1
  # def update
  #   if @membership.update(membership_params)
  #     render json: @membership
  #   else
  #     render json: @membership.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /memberships/1
  def destroy
    @membership.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_membership
      @membership = current_user.memberships.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def membership_params
      params.require(:membership).permit(:user_id, :group_id)
    end
end
