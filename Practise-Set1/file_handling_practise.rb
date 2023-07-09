require_relative "cmmn_modules.rb"

class FileHandlingPractise
    include Moduleadd
    def initialize
        # Opening a file
        # @fileObj = open $filename
        @arr = (IO.readlines("sampleFile.txt"))
    end    

    def addValInFile
        Moduleadd::findSum(@arr)
    end    
    

end

class Main
    def initialize
        @filehandlingObj = FileHandlingPractise.new
        @filehandlingObj.addValInFile
    end
end

$mainObj = Main.new