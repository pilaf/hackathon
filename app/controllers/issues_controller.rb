class IssuesController < ApplicationController
  before_filter :authorize, only:  [:new, :create]

  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new(params[:issue])
    @labels = Label.all
  end

  def create
    @issue = current_user.issues.new(issues_params)
    if @issue.save
      @issue.add_labels(params[:issue][:labels])
      render @issue
    else
      render 'new'
    end
  end

  private
  def issues_params
    params.require(:issue).permit(:title, :description, :assignee_id, :latitude, :longitude)
  end
end
