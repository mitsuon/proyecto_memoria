class Carrera < ActiveRecord::Base
    has_many :mallas
    validates :nombre, :uniqueness => { message: "ya existe" }
end
