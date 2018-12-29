class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  #validação
  validates :name, :email, :phone, presence: true
end
