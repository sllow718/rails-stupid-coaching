class QuestionsController < ApplicationController
  def ask

    # def coach_answer_enhanced(your_message)
    #   # TODO: return coach answer to your_message, with additional custom rules of yours!
    #   while your_message.upcase != "I AM GOING TO WORK RIGHT NOW!"
    #     if (your_message.include? "?")
    #       if (your_message == your_message.upcase)
    #         return "I can feel your motivation! Silly question, get dressed and go to work!"
    #       else
    #         return "Silly question, get dressed and go to work!"
    #       end
    #     elsif (your_message == your_message.upcase)
    #         return "I can feel your motivation! I don't care, get dressed and go to work!"
    #     else
    #       return "I don't care, get dressed and go to work!"
    #     end
    #   end
    #   return ""
    # end

  end

  def answer
    # @question = params[:question] if params[:question]
    def coach_answer(your_message)
      # TODO: return coach answer to your_message
      while your_message != "I am going to work right now!"
        if (your_message.include? "?")
          return "Silly question, get dressed and go to work!"
        else
          return "I don't care, get dressed and go to work!"
        end
      end
      return ""
    end
    @myresponse = "I looked at my coach in silence..."
    @response = coach_answer(params[:question]) if params[:question]
    @myresponse = params[:question] if params[:question].length>0
  end
end
