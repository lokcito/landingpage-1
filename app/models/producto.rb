class Producto < ApplicationRecord
  belongs_to :categorium

  validates :nombre, :descripcion,
    :imagen, presence: { message: ": Este campo es requerido" }

    validates :nombre,
      length: { minimum: 4, maximum: 100,
        message: "El nombre debe tener entre 4 y 100 caracteres" }

    validates :nombre,
      uniqueness: { message: ": El nombre ya ha sido utilizado" }  

    validates :descripcion,
      length: {minimum: 15, maximum: 200}    
  
  def nproductos
    return Producto
    .where(categorium_id: self.id).count
  end  
end
