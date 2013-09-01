# Class14

# ------------------------------------------------------------------------

# Bicycle App!

# Start with user stories
# 	eg: admin can modify users name 
# 	eg: admin can send notice to users for payment

# Bike Shop App

# Stakeholder: 
# 	- As an Admin, i want to create an order for a bike
# 	- As an Admin, i want to be able to login 
# 	- As an Admin, i want to view a catalog of parts in order to understand what is avaliable
# 	- As an Admin, i want to be able to select a wheel for a bike order.
# 	- As an Admin, i want to see a list of existing orders

# Questions

# As an Admin, i want to be able to SEARCH orders by name?
# What is before_action, before_filter?
# Use alerts?
# What can i get away with not using as private?
# How to pull in the FoodItem in relation to the FoodOrder name


1. rails new bike_shop

2. rails generate migration CreateBicycleOrders name wheels_id:integer:index

	# 	name migration with action name such as Create / Add / Change with CAMELCASE no space follow by attributes:type:index 
	# 	migration need to be in Plural (S) - super important

3. rake db:migrate 
	# then check your schema.rb!!!!!

4. create the model: bicycle_order.rb

5. validates_presence_of :name or validates :name, :presence => true
	# you might not need this ???

6. route.rb - add: resources :bicycle_orders (remember that it is pluralise of whatever that you name model)
	then do a rake route to see if routes are generated

7. create controller - bicycle_orders_controller.rb
	name is with pluralise with _controller.rb - same as the name used in your model.rb
	rails generate controller BicycleOrders <------ (s) 

	*CHECK Rails server - Check if create standard rails homepage - if yes, you are on track 

8. create "def new" in controller - with new instance of BicycleOrder = instance variable for @bicycle
	bicycle is used based on what your class model name is to create new instance eg: BicycleOrder.new

	class BicycleOrdersController < ApplicationController
		def new
			@bicycle = BicycleOrder.new
		end
	end

9. New view - new.html.erb - in the bicycle_orders folder in views

	<h1>Bicycle Orders</h1>
	
	<%= form_for @bicycle do |f|%>
		<div>
			<%= f.label :name %>
			<%= f.text_field :name %>
		</div>
		<%= f.submit %>
	<% end %>

	# CHECK Rails server - is it linked? 
	# Do you see a form?
	# Try to submit something
	# Do you see this "The action 'create' could not be found for FoodOrdersController"

10. define create action in controller "def create" 

	def create
		bicycle_order = BicycleOrder.new(bicycle_order_params)

		# don't forget to define the bicycle_order_params method (shown below)
		# bicycle_order is the instance of the object of BicycleOrder
		
		if bicycle_order.save 
			redirect_to edit_bicycle_order_path(bicycle_order)
		else
			redirect_to new_bicycle_order_path
		end
		# if bicycle_order (this is just one instance) saves, then redirect to it's instance edit page, else do what ever the else condition does
	end

	def bicycle_order_params

	# this only allows bicycle_order(instance) to pass in the attributes of name and wheel_set_id
	# the input of into the form for both create and update

		params.require('bicycle_order').permit('name','wheel_set_id')
	end

11. Create the edit.html.erb view 
	# CHECK Rails server - is it linked? 

12. Add in the form need to make the view to edit the form.

# link up the update form so that you get the errors to know what is missing in your controller. 

<%= form_for @bicycle_order do |f|%>
	<div>
		<%= f.label :name %>
		<%= f.text_field :name %>
	</div>

	<%= f.submit %>
<% end %>

	# CHECK Rails server - is it linked? 
	# it will ask from the "update" method - this is what you define next

13. "def update" in controller.rb

	# update will ask for a template if you do not define a bicycle instance variable

	def update 
		food_order = FoodOrder.find(params[:id])
		
		if food_order.update(food_order_params)
			redirect_to new_food_order_path #if success reroute to the new page
		else
			redirect_to edit_food_order_path(food_order) #if fail stay on the edit page
		end			
	end

	# CHECK Rails server - is it update working? 

14. rails generate migration CreateFoodItems name:string food_item_id:integer:index
	# or (this will generate the model as well, it will add "create" to migration and pluralise the migration)
	rails generate model FoodItem name:string food_item_id:integer:index

	
15.	rake db:migrate

16. (Optional) drop in more instance into database by using rake db:seed and array

WheelSet.create([
	{ 
		name: 'Big Wheel'  
	}, 
	{ 
		name: 'Medium Wheel' 
	}, 
	{ 
		name: 'Small Wheel' 
	}
]) 

17. Wheel_set.rb 
	
	validates :name, :presence => true
	# Standard to validate only name can be added to model

	belongs_to :wheel_set 
	# This defines association
	
18. Add in selection into form in edit.html.erb

	<div>
		<%= f.label :food_item_id %>
		<%= f.select :food_item_id, @food_items.map {|f| [f.name, f.id] }, include_blank: 'Nothing' %>
		# The include_blank: 'Nothing' is placeholder if nothing is selected and therefore will be nil
		# .map will cycle through all my name and id and put them into the selection fields of the dropdown
	</div>		

19. Have index page to show 
		# 1. list of FoodOrders and edit button
		# 2. list of FoodItems
 	
20. Add markup to show to show these in index.html.erb

	# loop through every single name in the @food_orders (FoodOrder.all) and display it with the instance linked path
	<% @food_orders.each do |f| %>
	  <div class="module">
	  	# link_to (the display name),(the path it goes to)
	    <p><%= link_to f.name, edit_food_order_path(f.id) %></p> 
	    <p><%= f.name %></p>
	  </div>
	<% end %>	
	


	<% @food_items.each do |i| %>
	  <ul class="menu">
	    <li><%= i.name %></li>
	  </ul>
	<% end %> 		
	
20. def index # Which ever page you want to display all your FoodOrders & FoodItems
		@food_orders = FoodOrder.all
		@food_items = FoodItem.all
	end


19. Add in delete feature

20. Create the delete button in edit.html.erb # where ever you want your delete button to be

	# So that you get an error saying destroy isn't defined in controller

	<p>
	  <%= button_to 'Delete', {action: 'destroy', id: @food_order.id},method: 'delete' %>
	</p>	

21. def destroy 
		food_order = FoodOrder.find(params[:id])
		# grab the instance of FoodOrder via is and assign as local variable for food_order
    	food_order.destroy
		# destory it (delete from database)
    	redirect_to food_orders_path
    	# redirect to the food_orders_path which is the index page
	end

22. Test it out

