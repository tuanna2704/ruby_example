class IndexController < ApplicationController
  layout :resolve_layout
  def reactjs

  end

  def angular
  
  end

  def vue
  end

  private

  def resolve_layout
    case action_name
    when "reactjs"
      "reactjs"
    when "angular"
      "angular"
    when "vue"
      "vue"
    else
      nil
    end
  end
end
