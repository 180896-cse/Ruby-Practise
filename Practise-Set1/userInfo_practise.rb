require_relative "./cmmn_modules.rb"

class UserInfo
    extend Disp
    def initialize
        puts "Enter Name: "
        @name = gets
        puts "Enter Department: "
        @dep = gets
        puts "Enter College: "
        @cllg = gets
    end

    def output
        puts "User Information: "
        puts Disp::printUsrInfo(@name,@dep,@cllg)
    end
    
    
end

usrObj = UserInfo.new
usrObj.output()