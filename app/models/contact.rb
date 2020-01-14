class Contact
  include ActiveModel::Model

  attr_accessor :company, :name, :tel, :email, :address, :industry, :saraly, :message

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :message, {presence: true}
end
