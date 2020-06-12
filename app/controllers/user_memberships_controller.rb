class UserMembershipsController < InheritedResources::Base

  private

    def user_membership_params
      params.require(:user_membership).permit()
    end

end
