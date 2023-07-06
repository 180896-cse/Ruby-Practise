module Print
    ORG = "Institution"
    def printUsrInfo(*rest)
        for i in rest
            puts (i);
        super        
    end    
    end
end

class UserInfo
    prepend Print
    def initialize
        @name = gets
        @dep = gets
        @cllg = gets
    end

    def output
        puts Print.printUsrInfo(@name,@dep,@cllg)
    end
    
    
end

usrObj = UserInfo.new
# p usrObj::ORG
usrObj.output()