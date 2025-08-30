defmodule Main do
  @moduledoc """
  calcula el peso de un peaje segun el vehiculo y su peso
  """

  @doc """
  tipos de vehiculos
  """
  @tipos [:carro, :moto, :camion]
  def tipos, do: @tipos

  @doc """
  main que invoca las funciones
  """
  def main() do
    placa=pedir_placa()
    tipo=tipo_vehiculo()
    peso=pedir_peso_vehiculo()
    costo=asignar_tarifa(tipo, peso)
    mostrar_mensaje(placa, tipo, peso, costo)
  end

  @doc """
  pide la placa
  """
  defp pedir_placa() do
    Util.input("ingrese la placa", :string)
  end

  @doc """
  pide el tipo de vehiculo
  """
  defp tipo_vehiculo() do
    seleccion=Util.input_opcion("seleccione el vehiculo", tipos())
    String.to_atom(seleccion)
  end

  @doc """
  pide el peso del vehiculo
  """
  defp pedir_peso_vehiculo() do
    Util.input("ingrese el peso del vehiculo (Ton)", :float)
  end

  @doc """
  asigna la tarifa segun el tipo de vehiculo y su peso
  """
  def asignar_tarifa(:carro, peso), do: 10_000
  def asignar_tarifa(:moto, peso), do: 5_000

  def asignar_tarifa(:camion, peso) when peso > 10 do
    20_000 + trunc((peso - 10) * 2_000)
  end

  def asignar_tarifa(:camion, peso), do: 20_000
  def asignar_tarifa(_, _), do: 0   # caso por defecto


  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(placa, tipo, peso, costo) do
    Util.show_message("Vehiculo #{placa} (#{tipo}) debe pagar #{costo}")
  end

end

Main.main()
