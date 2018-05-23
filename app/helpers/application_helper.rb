module ApplicationHelper
    
    def word_info(word, label)
        if word != ""
           return "<p><span class='label'>#{label}:</span> #{word}</p>".html_safe
        end
    end
    
    def h1_for_obj(obj, label)
        if obj != ""
            return "<h1>#{label}</h1>".html_safe
        end
    end
end
