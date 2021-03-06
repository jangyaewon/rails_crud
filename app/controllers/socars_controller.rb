class SocarsController < ApplicationController
    before_action :set_socar, only: [:show, :edit, :update, :destroy]
    def index
        @socars = Socar.all
    end
    
    def new
    end
    
    def create
        @socar = Socar.new(title: params[:title], content: params[:content])
        if @socar.save
            redirect_to "/socars/#{@socar.id}"
        else
            redirect_to :back
        end
    end
    
    def edit
    end
    
    def update
        if @socar.update()
           redirect_to "/socars/#{@socar.id}"
        else
            redirect_to :back
        end
    end
    
    def destroy
        @socar.destroy
        redirect_to "/socars"
    end
    
    private
    def set_socar
        @socar = Socar.find(params[:id])
    end
    
    def socar_params
        {title: params[:title], content: params[:content]}
    end    
end
