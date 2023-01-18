class MacbooksController < ApplicationController
    before_action :authenticate_user!
    def index
        @macbooks = Macbook.all
        render json: @macbooks, status: 200
    end

    def show
        @macbook = Macbook.find(params[:id])
        render json: @macbook, status: 200
    end

    def new
        @macbook = Macbook.new
    end

    def create
        @macbook = Macbook.new(name: params[:name], city: params[:city])
        if @macbook.save
            render json: @macbook, status: 200
        end
    end

    def edit
        @macbook = Macbook.find(params[:id])
    end

    def update
        @macbook = Macbook.update(name: params[:name], city: params[:city])
        render json: @macbook, status: 200
    end

    def destroy
        @macbook = Macbook.find(params[:id])
        @macbook.destroy 
    end
end
