class Policial < ActiveRecord::Base
  attr_accessible :cpf, :email, :matricula, :nascimento, :nome, :nome_guerra
  validates_presence_of :cpf, :email, :matricula, :nascimento, :nome, :nome_guerra, :message => " - Preencha o campo"
  validates_length_of :nome, :within => 5..30, :message => " - Minimo de 5 e maximo de 30 caracteres"
  validates_uniqueness_of :cpf, :message => "- este CPF ja esta registrado no sistema"
  validates_length_of :cpf, :is => 11, :message => "- Numero invalido de digitos"
  validates :cpf, :format => { :with => /[0-9]{11}/, :message => "- Somente numeros" }
  validates :email, :format => {:with => /.+@.+\..+/, :message => "- Formato invalido" }
  has_many :veiculos, :dependent => :destroy
  has_many :cautelas, :dependent => :destroy
  has_many :items, :through => :cautelas
end
