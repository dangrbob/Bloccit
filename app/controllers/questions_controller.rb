class QuestionsController < ApplicationController
  def index
      @questions = Question.all
  end    

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
     @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params.require(:question).permit(:title, :body))
    if @question.save
      flash[:notice] = "Question was saved."
      redirect_to @question
    else
      flash[:error] = "Somethings not right. Please try to save your question again."      
      render :new
    end
  end

  def resolve
    @question=Question.find(params[:id])
    if @question.resolved
      "Question status: Resolved"
    else
      "Question status: Open"
    end  
  end
  def update
    @question=Question.find(params[:id])
    if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
      flash[:notice]= "Question was updated."
      redirect_to @question
    else
      flash[:error]="Somethings not right. Please try to save your question again."
      render :edit
    end
  end  
  helper_method :resolve    
end
