class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:body]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.split('').include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
