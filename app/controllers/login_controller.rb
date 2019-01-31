class LoginController < ApplicationController
    skip_before_action :user_logged_in?
    def sign_in
        if params[:name] == "domestic" && params[:pass] = "SSOver90km" then
            session[:name] = params[:name]
            redirect_to ("/dashboard/list")
        elsif params[:name] == "editor" && params[:pass] = "MFMF10tan" then
            session[:name] = params[:name]
            redirect_to ("/dashboard/list")
        else
            redirect_to("login")
        end
    end
end
