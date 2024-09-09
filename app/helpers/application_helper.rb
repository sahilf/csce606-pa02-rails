module ApplicationHelper
    def sort_direction(column)
        column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    end

    def sort_class(column)
        if params[:sort] == column
            params[:direction] == "asc" ? "sorted-asc" : "sorted-desc"
        else
            ""
    end
  end
  
  def sort_cue(column)
    if params[:sort] == column
        params[:direction] == "asc" ? "▲" : "▼"
    else
        ""
    end
  end
end
