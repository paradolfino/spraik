class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    
    def index
       @categories = Category.all 
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
    
    def new_word
        @word = Word.new
    end
    
    def create_word
        @word = Word.new(word_params)
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
