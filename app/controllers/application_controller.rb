class ApplicationController < ActionController::Base
  helper_method :current_author, :logged_in_author

  def current_author
    if session[:author_id]
      @current_author ||= Author.find(session[:author_id])
    else
      @current_author = nil
    end
  end

  def logged_in_author
    if current_author.nil?
      flash[:notice] = 'Please Log In'
      redirect_to login_url
    end
  end
end
