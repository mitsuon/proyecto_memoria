class Carrera < ActiveRecord::Base
    validates :nombre, :uniqueness => { message: "ya existe" }
end
