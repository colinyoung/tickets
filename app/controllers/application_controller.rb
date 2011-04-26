class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_remote
  
  def load_remote
    model_to_check = controller_name.capitalize.singularize
    if model_to_check.present?
      eval "#{model_to_check}.class.send(:update!)"
    end
  end
end
