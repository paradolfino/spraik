class WordsController < ApplicationController
    before_action :set_word, only: [:show, :edit, :update, :destroy]
    
    def index
        @words = Word.all
    end
    
    def show
        
    end
    
    def new
        @word = Word.new
    end
    
    def create

        @word = Word.new(word_params)
        if @word.save
            redirect_to word_path(@word) 
        else
            render 'new'
        end
    end
    
    def edit
        
    end
    
    def update
        if @word.update(word_params)
          redirect_to word_path(@word)
        else
           render 'edit'
        end
    end
    
    def destroy
        
    end
    
    private
    
        def set_word
           @word = Word.find(params[:id]) 
        end
        
        def word_params
           params.require(:word).permit(:eng_si, :nor_si, :eng_pl, :nor_pl, :eng_def_si, :nor_def_si, :eng_def_pl, :nor_def_pl, :eng_past, :nor_past, :eng_fut, :nor_fut, :eng_pre, :nor_pre, :category_id)
        end
end
