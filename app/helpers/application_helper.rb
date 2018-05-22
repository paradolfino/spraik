module ApplicationHelper
    
    def word_info(word, label)
        if word != "" || word != nil
           return "<span class='label'>#{label}:</span> #{word}".html_safe
        end
    end
    
    def h1_for_obj(obj, label)
        if obj != "" || obj != nil
            return "<h1>#{label}</h1>".html_safe
        end
    end
end
