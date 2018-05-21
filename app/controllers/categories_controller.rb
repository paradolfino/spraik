class CategoriesController < ApplicationController
    
    def index
       @category = Category.all 
    end
    
    def show
        
    end
    
    def new
       @category = Category.new 
    end
    
    def create
       @category = Category.new(category_params) 
       if @category.save
          redirect_to categories_path 
       else
           render 'new'
       end
    end
    
    def edit
        
    end
    
    def update
        if @category.save
          redirect_to @category 
        else
           render 'edit'
        end
    end
    
    def destroy
        @category.destroy
    end
    
    private
    
        def set_category
           @category = Category.find(params[:id]) 
        end
        
        def category_params
           params.require(:category).permit(:title) 
        end
    
end
