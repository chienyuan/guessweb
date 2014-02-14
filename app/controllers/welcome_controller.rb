require 'guessword'

class WelcomeController < ApplicationController
  def index
  end

  def guesswords
    pattern_str = params[:pattern_str].nil? ? "" : params[:pattern_str]
    letter_str  = params[:letter_str].nil?  ? "" : params[:letter_str]

    result = Guessword.guess(pattern_str,letter_str)


    render :text => result
  end  
end
