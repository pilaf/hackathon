module IssuesHelper

  def collaborators_array
    @collaborators_array = User.where(collaborator: true).map { |colaborator| [colaborator.name, colaborator.id] }
  end
end