class DocumentController < ApplicationController
    protect_from_forgery :except => [:validation]
    def index
    end
    
    def create
        @name
        @radio
    end
    
    def validation
        @name = params[:name]
        @radio = params[:radio]
        # case @radio 
        # when "create" then
        #   render 'create' and return
        # when "update" then
        #     redirect_to('')
        # when "delete" then
        #     redirect_to('')
        # end
        
        render "create" and return
    end
end