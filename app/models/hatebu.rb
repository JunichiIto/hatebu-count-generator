class Hatebu
  include ActiveModel::Model

  attr_accessor :page_url

  validates :page_url, presence: true
end