# require "csv"

class FormController < ApplicationController
    def save
        # csv = CSV.open('tmp/create_form.csv', 'a')
        
        # csv.puts([params[:name],params[:radio],params[:charge],params[:item],params[:who],params[:content],params[:why]])
        # csv.close
        
        @form = Form.new(name: params[:name], radio: params[:radio],charge: params[:charge], item: params[:item], who: params[:who], content: params[:content], why: params[:why])
        if @form.save then
            redirect_to('/dashboard/list')
        else
            render 'document/create' and return
        end
    end
    def edit
        @form = Form.find(params[:id])
        
    end
    
    def update
        form = Form.find(params[:id])
        form.name = params[:name]
        form.radio = params[:radio]
        form.charge = params[:charge]
        form.item = params[:item]
        form.who = params[:who]
        form.content = params[:content]
        form.why = params[:why]
        if form.save then
            redirect_to('/dashboard/list')
        else
            render'form/edit/'+params[:id].to_s and return
        end
    end
    
    def destroy
        form = Form.find(params[:id])
        form.destroy
        redirect_to('/dashboard/list')
    end
    
end
