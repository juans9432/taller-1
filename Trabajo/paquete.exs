defmodule Main do

  @moduledoc """
  calcula el costo de un paquete segun el tipo y el peso
  """
  @doc """
  tipos de vehiculos
  """
  @tipos [:economico, :express, :internacional]
  def tipos, do: @tipos

  @doc"""
  invoca todas las funciones
  """
  def main() do
    nombre=pedir_nombre()
    peso=pedir_peso()
    tipo=pedir_tipo()
    costo=asignar_tarifa(tipo, peso)
    mostrar_mensaje(nombre, peso, tipo, costo)
  end

  @doc"""
  pide el nombre del conductor
  """
  defp pedir_nombre() do
    Util.input("ingrese el nombre del cliente", :string)
  end

  @doc """
  pide el peso del paquete
  """
  defp pedir_peso() do
    Util.input("ingrese el peso del paquete (Kg)", :float)
  end

  @doc"""
  pide el tipo de envio
  """
  defp pedir_tipo() do
    seleccion=Util.input_opcion("seleccione el tipo de envio", tipos())
    String.to_atom(seleccion)
  end

  @doc """
  asigna el valor del envio segun el paquete y el peso
  """
  def asignar_tarifa(:economico, peso), do: peso*5000
  def asignar_tarifa(:express, peso), do: peso*8000
  def asignar_tarifa(:internacional, peso) do
    if peso <= 5 do
      peso*15000
    else
      peso*12000
    end
  end

  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(nombre, peso, tipo, costo) do
    Util.show_message("#{nombre}, #{peso}, #{tipo}, $#{costo}")
  end


end

Main.main()
