require_relative "cmmn_modules.rb"

class ArrayPractise
    include Disp
    @@usrInput = Array.new

    def initialize()
        puts "Please Enter 10 digit for Array"
        for i in 1..10
            @@usrInput.push(gets.to_i)
        end
        puts "The Array is as follows: "
        Disp::printUsrInfo(@@usrInput)
    end

    def findSum()
        @totalSum = 0
        @@usrInput.each {|i| @totalSum+=i}
        puts "The Total Sum of Given Array : "
        puts @totalSum  
    end

end    


class Main
    def initialize
        @ArrayPractiseObj = ArrayPractise.new
        @ArrayPractiseObj.findSum()
    end
end

$mainObj = Main.new