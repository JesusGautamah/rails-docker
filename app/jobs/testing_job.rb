class TestingJob < ApplicationJob
    queue_as :default

  
    def perform()
        
    #    (1..100).each do |i|
    #         puts(i)
    #    end

    end

end