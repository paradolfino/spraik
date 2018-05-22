class WordsController < ApplicationController
    
    def index
        @category = Category.all
        @words = Word.all 
    end
    
    def show
        @category = Category.find(params[:id])
        @word = @category.words.find(params[:category_id])
    end
    
    def new
        @category = Category.find(params[:category_id])
        @word = @category.words.new
    end
    
    def create
        @category = Category.find(params[:category_id])
        @word = @category.words.new(word_params)
        if @word.save
            redirect_to category_path(@category) 
        else
            render 'new'
        end
    end
    
    def edit
        @category = Category.find(params[:id])
        @word = @category.words.find(params[:category_id])
    end
    
    def update
        @category = Category.find(params[:category_id])
        @word = @category.words.find(params[:id])
        if @word.update(word_params)
          redirect_to category_path(@category)
        else
           render 'edit'
        end
    end
    
    def destroy
        @category = Category.find(params[:id])
        @word = @category.words.find(params[:category_id])
    end
    
    private
        
        def word_params
           params.require(:word).permit(:eng_si, :nor_si, :eng_pl, :nor_pl, :eng_def_si, :nor_def_si, :eng_def_pl, :nor_def_pl, :eng_past, :nor_past, :eng_fut, :nor_fut, :eng_pre, :nor_pre, :category_id)
        end
end
