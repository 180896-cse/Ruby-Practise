require_relative "cmmn_modules.rb"

class CntrlStructPractise
    include Mfunc

    def rtnString()
        puts "Please Enter any Number: "
        @usrInput = Mfunc::getUsrInput().to_i
        
        if (@usrInput % 42 ==0)
            puts "Univese"
        elsif (@usrInput % 6 == 0)
            puts "Food"
        elsif (@usrInput % 7 == 0)
            puts "Good"
        else
            puts "Oops!"
        end                            
    end
    
end

class Main
    @@CntrlStructPractiseObj = CntrlStructPractise.new
    @@CntrlStructPractiseObj.rtnString();

end

$cntrlObj = Main.new