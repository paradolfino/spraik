class WordsController < ApplicationController
    
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
          redirect_to words_path 
       else
           render 'new'
       end
    end
    
    def edit
        
    end
    
    def update
        if @word.save
          redirect_to @word 
        else
           render 'edit'
        end
    end
    
    def destroy
        @word.destroy
    end
    
    private
    
        def set_word
           @word = Word.find(params[:id]) 
        end
        
        def word_params
           params.require(:word).permit(:title) 
        end
end
