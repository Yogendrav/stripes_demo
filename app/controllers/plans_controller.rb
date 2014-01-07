class PlansController < ApplicationController
	@plans = Plan.order("price")
end
