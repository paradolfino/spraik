module ApplicationHelper
    
    def word_info(word, label)
       "<h4>#{label}:</h4>
       <p>#{word}</p>".html_safe if word != nil
    end
    
end
