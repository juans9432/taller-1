defmodule Main do
  def main() do
    nombre=pedir_nombre()
    distancia=pedir_distancia()
    combustible=pedir_combustible_consumido()
    rendimiento=calcular_rendimiento(distancia, combustible)
    mostrar_mensaje(nombre, rendimiento)
  end

  defp pedir_nombre() do
    Util.input("ingrese su nombre", :string)
  end

  defp pedir_distancia() do
    Util.input("ingrese la distancia recorrida (km)", :float)
  end

  defp pedir_combustible_consumido() do
    Util.input("ingrese la cantidad de combustible consumido (litros)", :float)
  end

  defp calcular_rendimiento(distancia, rendimiento) do
    distancia/rendimiento
  end

  defp mostrar_mensaje(nombre, rendimiento) do
    Util.show_message("Hola #{nombre}, el rendimiento del auto es #{Float.round(rendimiento, 2)} Km/L")
  end


end

Main.main()
