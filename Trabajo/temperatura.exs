defmodule Main do
  @moduledoc """
  convierte temperatura de celsius a kelvin y farenheit
  """
  @doc """
  main que invoca las funciones
  """
  def main() do
    nombre=pedir_nombre()
    celsius=pedir_temperatura()
    farenheit=convertir_temperatura_farenheit(celsius)
    kelvin=convertir_temperatura_kelvin(celsius)
    mostrar_mensaje(nombre, farenheit, kelvin)
  end

  @doc """
  pide el nombre
  """
  defp pedir_nombre() do
    Util.input("ingrese su nombre", :string)
  end

  @doc """
  pide la temperatura
  """
  defp pedir_temperatura() do
    Util.input("ingrese la temperatura (C°)", :float)
  end

  @doc """
  convierte la temperatura
  """
  defp convertir_temperatura_farenheit(celsius) do
    (celsius*9/5)+32
  end

  defp convertir_temperatura_kelvin(celsius) do
    celsius + 273.15
  end

  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(nombre, farenheit, kelvin) do
  Util.show_message(
    "#{nombre}, la temperatura es:\n#{farenheit}°F\n#{kelvin}°K"
  )
end

end
Main.main()
