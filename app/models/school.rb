class School < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :website, format: { with: URI::DEFAULT_PARSER.make_regexp}, allow_blank: true
end