# code here!
require 'pry'
class School

    attr_accessor :roster
    attr_reader :name

    def initialize name
        @name = name
        @roster = {}
    end

    def add_student name, grade
        if self.roster[grade] == nil
            self.roster[grade] = [name]
        else
            self.roster[grade] << name
        end
    end

    def grade grade
        self.roster[grade]
    end

    # def sort
    #     self.roster.each do |key, value|
    #         new_array = self.roster[key]
    #         self.roster[key] = new_array.sort
    #     end
    # end

    def sort
        self.roster.reduce({}) do |roster, (key,value)|
            roster[key] = value.sort
            roster
        end
    end




end


school = School.new("Bayside High School")
school.add_student "c", 1
school.add_student "b", 1
school.add_student "a", 1
school.add_student "f", 2
school.add_student "e", 2
school.add_student "d", 2

#school.sort

#binding.pry
