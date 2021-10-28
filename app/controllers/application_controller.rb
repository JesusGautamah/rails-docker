class ApplicationController < ActionController::Base
    include Pagy::Backend
    include ActionController::Helpers


    def home

        #TestingJob.perform_later()

    end


end
