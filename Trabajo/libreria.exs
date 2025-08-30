defmodule Main do
  @moduledoc """
  control de inventario de una libreria
  """
  @doc """
  main que invoca todas las funciones
  """
  def main() do
    titulo=pedir_nombre_libro()
    cantidad=pedir_unidades_disponibles()
    precio=pedir_precio_unitario()
    valor=calcular_valor_inventario(cantidad, precio)
    mostrar_mensaje(titulo, cantidad, valor)
  end

  @doc """
  pide el nombre dle libro
  """
  defp pedir_nombre_libro() do
    Util.input("ingrese el titulo del libro", :string)
  end

  @doc """
  pide la cantidad de unidades disponibles
  """
  defp pedir_unidades_disponibles() do
    Util.input("ingrese la cantidad de unidades disponibles", :integer)
  end

  @doc """
  pide el precio unitario del libro
  """
  defp pedir_precio_unitario() do
    Util.input("ingrese el precio unitario", :float)
  end

  @doc """
  calcula el valor de inventario usando la cantidad y el precio
  """
  defp calcular_valor_inventario(cantidad, precio) do
    cantidad*precio
  end

  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(titulo, cantidad, valor) do
    Util.show_message("El libro #{titulo} tiene #{cantidad} unidades, con un valor total de $#{valor}")
  end
end

Main.main()
