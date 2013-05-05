class IssuesController < ApplicationController

  #TODO: Add before filters: require_logged_in

  def index
    @issues = Issue.all
  end

  #Read
  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
    @labels = Label.all
  end

  def create
    @issue = current_user.issues.new(issues_params)
    if @issue.save
      create_issue_labels(@issue)
      render @issue
    else
      render 'new'
    end
  end

  private
  def issues_parameters
    params.require(:issue).permit(:title, :description, :assignee_id, :latitude, :longitude)
  end

  def create_issue_labels(issue)
    labels = params[:issue][:labels]
    unless labels.empty?
      labels.each do |label|
        issue.issue_labels.create(label_id: label.id)
      end
    end
  end
end