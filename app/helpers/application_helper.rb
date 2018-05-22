module ApplicationHelper
    
    def word_info(word, label)
        if word != ""
           return "<span class='label'>#{label}:</span>#{word}".html_safe
        end
    end
    
end
