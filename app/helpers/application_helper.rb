module ApplicationHelper
    
    def word_info(word, label)
        if word != ""
           return "<h4>#{label}:</h4>
           <p>#{word}</p>".html_safe
        end
    end
    
end
