class PhrasesController < ApplicationController
    before_action :set_phrase, only: [:show, :edit, :update, :destroy]
    
    def index
       @phrases = Phrase.all 
    end
    
    def show
        
    end
    
    def new
       @phrase = Phrase.new 
    end
    
    def create
       @phrase = Phrase.new(phrase_params) 
       if @phrase.save
          redirect_to word_path(@phrase.word) 
       else
           render 'new'
       end
    end
    
    def edit
        
    end
    
    def update
        if @phrase.save
          redirect_to @phrase 
        else
           render 'edit'
        end
    end
    
    def destroy
        @phrase.destroy
    end
    
    private
    
        def set_phrase
           @phrase = Phrase.find(params[:id]) 
        end
        
        def phrase_params
           params.require(:phrase).permit(:eng, :nor, :word_id, :category_id) 
        end
end
