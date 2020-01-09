# require_relative 'environment.rb'

class Dog
    attr_accessor :name, :breed, :age

    @@all = []

    def initialize(name, breed, age)
        @name = name
        @age = age
        @breed = breed
        self.save
    end

    def save
        @@all << self
    end

    def self.create(attributes)
        dog = Dog.new(attributes)
        dog.save
    end

    def self.all
        @@all
    end
end