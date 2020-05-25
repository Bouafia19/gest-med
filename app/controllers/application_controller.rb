class ApplicationController < ActionController::Base
  include PublicActivity::StoreController
  
    before_action :authenticate_user!
    helper_method :mailbox, :conversation
    
    def cities
      render json: CS.cities(params[:state], :us).to_json
    end

  private
  
 

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end
 
end
