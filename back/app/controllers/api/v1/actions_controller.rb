module Api::V1
  class ActionsController < ApplicationController
    def create
      Action.transaction do
        action_params["action_category"].each do |category|
          @action = Action.new(environment_id: action_params["id"], action_category: category)
          @action.save!
        end
      end
        response_success(:action, :create)
      rescue => e
        response_bad_request
    end

    def action_params
      # params.require(:action).permit(:id, action_category: [])
      params.permit(:id, action_category: [])
    end
  end
end