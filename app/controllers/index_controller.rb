class IndexController < ApplicationController
  layout :resolve_layout
  def reactjs

  end

  def angular
  
  end

  private

  def resolve_layout
    case action_name
    when "reactjs"
      "reactjs"
    when "angular"
      "angular"
    else
      "default"
    end
  end
end
