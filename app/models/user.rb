class User < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_numericality_of :age, greater_than: 0, allow_nil: true
  # has_many :contacts, dependent: :restrict_with_erro # :restrict_with_erro => impede que usuarios com contatos cadastrados sejam removidos.
  has_many :contacts, dependent: :destroy # :destroy => faz com que todos os contatos cadastrados que estão ligados a este usuário sejão removidos junto com eles.
end