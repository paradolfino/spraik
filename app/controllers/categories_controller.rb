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
        if @word.save
            redirect_to categories+path
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
        
        def word_params
           params.require(:word).permit(:eng_si, :nor_si, :eng_pl, :nor_pl, :eng_def_si, :nor_def_si, :eng_def_pl, :nor_def_pl, :eng_past, :nor_past, :eng_fut, :nor_fut, :eng_pre, :nor_pre, :category_id)
        end
    
end
