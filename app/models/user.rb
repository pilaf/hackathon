class User < ActiveRecord::Base
  has_secure_password

  #Associations
  has_many :reported_issues, class_name: "Issue", foreign_key: "creator_id"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id"
  has_many :comments

  #Validations
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: {case_sensitive: false}
  validates :username, format: { with: /\A[\w-]+\z/ }
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }

  #Methods
  def self.find_by_email_or_username(email_or_username)
    find_by_email(email_or_username) || find_by_username(email_or_username)
  end
end
