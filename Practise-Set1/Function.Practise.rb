module Mfunc
    def self.getUsrInput()
        return @usrData = gets;
    end;  
end;


class FunctionPractise
    include Mfunc

    # A function to return length of integer numbers.
    def rtnLen()
        puts "Enter any No :"
        @data = Mfunc.getUsrInput().to_i;
        puts @data.digits.length;
    end;

    # A function to compare two strings are same irrespective of case.
    def cmprStr()
        puts "Enter First String"
        @fstStr = Mfunc.getUsrInput();
        puts "Enter Second String"
        @secStr = Mfunc.getUsrInput();
        if (@fstStr.casecmp(@secStr))
            puts "Similar Strings!";
        else puts "Different Strings!"
        end;        
    end;

    # A function to  two strings are anagrams.
    def isAngrm()
        puts "Enter First String"
        @fstStr = Mfunc.getUsrInput();
        puts "Enter Second String"
        @secStr = Mfunc.getUsrInput();
        @finalRes = (@fstStr.chars.sort === @secStr.chars.sort);
        @finalRes ? (p "Anagram String") : (p "Not Anagram");

    end;  

end;    


class Main
    def initialize
        @funcObj = FunctionPractise.new;
        puts "Please Type (1)-> Know Length , (2)-> check similar String, (3)-> check Anagram String"
        @usrOpt = Mfunc.getUsrInput().to_i;
        case @usrOpt
        when 1
            @funcObj.rtnLen();
        when 2
            @funcObj.cmprStr();
        when 3
            @funcObj.isAngrm();
        else
            (puts "Invalid Input: #{@usrOpt}")
        end;    
    end;
end;        

$funcObj = Main.new;