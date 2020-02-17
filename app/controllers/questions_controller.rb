# frozen_string_literal: true

# hello
class QuestionsController < ApplicationController
  def ask
    @ask = params[:question]
  end

  def answer
    @answer = params[:question]
    @answer = if @answer.downcase == 'i am going to work'
                'Great!'
              elsif @answer.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
