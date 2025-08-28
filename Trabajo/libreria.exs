defmodule Main do
  def main() do
    titulo=pedir_nombre_libro()
    cantidad=pedir_unidades_disponibles()
    precio=pedir_precio_unitario()
    valor=calcular_valor_inventario(cantidad, precio)
    mostrar_mensaje(titulo, cantidad, valor)

  end

  defp pedir_nombre_libro() do
    Util.input("ingrese el titulo del libro", :string)
  end

  defp pedir_unidades_disponibles() do
    Util.input("ingrese la cantidad de unidades disponibles", :integer)
  end

  defp pedir_precio_unitario() do
    Util.input("ingrese el precio unitario", :float)
  end

  defp calcular_valor_inventario(cantidad, precio) do
    cantidad*precio
  end

  defp mostrar_mensaje(titulo, cantidad, valor) do
    Util.show_message("El libro #{titulo} tiene #{cantidad} unidades, con un valor total de $#{valor}")
  end
end

Main.main()
