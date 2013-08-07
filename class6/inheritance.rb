# Vehicle
# => Car
# => Bicycle

module Tootable
    def toot
        puts "Toot!"
    end

    def self.toot
        puts "My class toots"
    end
end

class Garage
    include Enumerable

    def initialize
        @vehicles = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def each
        @vehicles.each do |vehicle|
            yield(vehicle)
        end
    end

    def to_s
        @vehicles.to_s
    end
end

class Vehicle
    attr_accessor :make, :model

    def initialize(make='N/A', model='N/A')
        @capacity = nil
        @speed = nil
        @make = make
        @model = model
    end

    def to_s
        "#{self.class} Make: #{@make} Model: #{@model}"
    end
end

class Car < Vehicle
    def start_engine!
        puts 'Vroom!'
    end
end

class Bicycle < Vehicle
    include Tootable

    def initialize(make, model, kind)
        @kind = kind

        super(make, model)
    end

    def gears
        10

        super
    end
end

    car = Car.new('Mazda', 'Tribute')
    bike = Bicycle.new('Raleigh', 'Mountain Stomper', 'Mountain Bike')
    vehicle = Vehicle.new

    garage = Garage.new

    garage.add_vehicle(car)
    garage.add_vehicle(bike)
    garage.add_vehicle(vehicle)

    vehicle_names = garage.map do |vehicle|
                       vehicle.to_s
                    end

puts vehicle_names

# Garage and Enumberable