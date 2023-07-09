
module Disp
    def self.printUsrInfo(*rest)
    puts rest
    end
end
 
module Mfunc
    def self.getUsrInput()
        return @usrData = gets;
    end;  
end;

module Moduleadd
    def self.findSum(arr)
        @sum =0
        for i in arr
            @sum += i.to_i
        end
        puts @sum
    end
end
