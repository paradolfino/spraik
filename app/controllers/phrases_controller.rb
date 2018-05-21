class PhrasesController < ApplicationController
    
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
          redirect_to phrases_path 
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
           params.require(:phrase).permit(:title) 
        end
end
