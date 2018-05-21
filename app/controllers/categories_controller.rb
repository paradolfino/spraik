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
        
    end
    
    def destroy
        
    end
    
end
