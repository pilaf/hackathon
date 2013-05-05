class User < ActiveRecord::Base
  has_many :reported_issues, class_name: "Issue", foreign_key: "creator_id"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id"
  has_many :comments

  #Accessors (Virtual attributes)
  attr_accessor :password, :password_confirmation

  #Validations
	validates :name, :username, :email, presence: true
	validates :username, :email, uniqueness: true
	validates :username, format: {with: /^[\w\d-]*$/}
	validates :email, format {with: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/}

	#On create validations
  validates :password, presence:true, on: :create

  #On update validations
  validates :password, confirmation: true, on: :update if :password  
end
