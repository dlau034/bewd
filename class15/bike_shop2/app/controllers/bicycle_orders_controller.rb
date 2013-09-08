class BicycleOrdersController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    @bicycle_orders = BicycleOrder.all
  end
  
  def new
    @bicycle_order = BicycleOrder.new
  end

  def edit
    @bicycle_order = BicycleOrder.find(params[:id])
    @wheel_sets = WheelSet.all
  end

  def update
    bicycle_order = BicycleOrder.find(params[:id])

    if bicycle_order.update(bicycle_order_params)
      redirect_to edit_bicycle_order_path(bicycle_order)
    else
      redirect_to edit_bicycle_order_path(bicycle_order)
    end
  end

  def create
    bicycle_order = BicycleOrder.new(bicycle_order_params)

    if bicycle_order.save
      redirect_to edit_bicycle_order_path(bicycle_order)
    else
      redirect_to new_bicycle_order_path
    end
  end

  def bicycle_order_params
    params.require('bicycle_order').permit('name', 'wheel_set_id')
  end
end