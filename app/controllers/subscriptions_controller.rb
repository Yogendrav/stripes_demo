class SubscriptionsController < ApplicationController
  before_filter :params_subscription
	def new
    plan = Plan.find(params_subscription)
    @subscription = plan.subscriptions.build
  end
	def create
    @subscription = Subscription.new(params_subscription)
    if @subscription.save_with_payment
      redirect_to @subscription, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end
  def show
    @subscription = Subscription.find(params[:id])
  end
  private
  def params_subscription
    params.require(:subscription).permit(:plan_id, :email)
  end
end
