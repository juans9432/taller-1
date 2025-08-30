defmodule Main do
  @moduledoc"""
  calcula el rendimiento de un vehiculo segun la distancia recorrida y el combustible consumido
   """
  @doc """
  funcion main que invoca todas las funciones
  """
  def main() do
    nombre=pedir_nombre()
    distancia=pedir_distancia()
    combustible=pedir_combustible_consumido()
    rendimiento=calcular_rendimiento(distancia, combustible)
    mostrar_mensaje(nombre, rendimiento)
  end

  @doc """
  pide el nombre
  """
  defp pedir_nombre() do
    Util.input("ingrese su nombre", :string)
  end

  @doc """
  pide la distancia recorrida
  """
  defp pedir_distancia() do
    Util.input("ingrese la distancia recorrida (km)", :float)
  end

  @doc """
  pide el combustible consumido
  """
  defp pedir_combustible_consumido() do
    Util.input("ingrese la cantidad de combustible consumido (litros)", :float)
  end

  @doc """
  calcula el rendimiento usando la distnacia y el combustible
  """
  defp calcular_rendimiento(distancia, combustible) do
    distancia/combustible
  end

  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(nombre, rendimiento) do
    Util.show_message("Hola #{nombre}, el rendimiento del auto es #{Float.round(rendimiento, 2)} Km/L")
  end


end

Main.main()
