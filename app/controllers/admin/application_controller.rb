# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_user!
    before_action :authenticate_admin

    def order
      @order ||= Administrate::Order.new(
        params.fetch(resource_name, {}).fetch(:order, default_sort[:order]),
        params.fetch(resource_name, {}).fetch(:direction, default_sort[:direction]),
      )
    end

    # override this in specific controllers as needed
    def default_sort
      { order: :name, direction: :asc }
    end

    def authenticate_admin
      if current_user.admin
        return
     else
        redirect_to root_url # or whatever
     end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
