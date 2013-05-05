class User < ActiveRecord::Base
  has_secure_password

  # Associations
  has_many :reported_issues, class_name: "Issue", foreign_key: "creator_id"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id"
  has_many :comments

  # Validations
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :username, format: { with: /^[\w-]+$/ }
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }

  # Validations on create
  validates :password, presence: true, on: :create

  # Validations on update
  validates :password, confirmation: true, on: :update, if: :password
end
