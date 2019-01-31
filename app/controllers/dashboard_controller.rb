class DashboardController < ApplicationController
    def list
        name = params[:name]
        if name == nil
            @forms = Form.all
        else
            @forms = Form.where("name = ?", name)
        end
    end
end
