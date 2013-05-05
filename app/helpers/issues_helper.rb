module IssuesHelper
  def collaborators_list
    collaborators_list ||= User.where(collaborator: true).map { |colaborator| [colaborator.name, colaborator.id] }
  end
end
