class OrdenProducto < ApplicationRecord
  belongs_to :orden
  belongs_to :producto
  validates :cantidad, numericality: {
    message: "Ingrese un numero valido."
  }
end
