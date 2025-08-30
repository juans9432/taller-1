defmodule Main do
  @moduledoc """
  calcula el salario de un empleado
  """
  @doc """
  main que invoca las funciones
  """
  def main() do
    nombre=pedir_nombre()
    salario=pedir_salario_base()
    horas_extra=pedir_horas_extra()
    salario_total=calcular_pago_extra(salario, horas_extra)
    mostrar_mensaje(nombre, salario_total)
  end

  @doc """
  pide el nombre del empleado
  """
  defp pedir_nombre() do
    Util.input("ingrese su nombre", :string)
  end

  @doc """
  pide el salario base
  """
  defp pedir_salario_base() do
    Util.input("ingrese el salario base", :float)
  end

  @doc """
  pide las horas extra
  """
  defp pedir_horas_extra() do
    Util.input("ingrese las horas extra trabajadas", :integer)
  end

  @doc """
  calcula el salario segun el salaio base y las horas extra
  """
  defp calcular_pago_extra(salario, horas_extra) do
    valor_hora=salario/160
    pago_hora_extra=valor_hora*1.5*horas_extra
    salario_total=pago_hora_extra+salario
    salario_total
  end

  @doc """
  muestra el mensaje
  """
  defp mostrar_mensaje(nombre, salario_total)do
    Util.show_message("el salario total de #{nombre} es de $#{salario_total}")
  end


end

Main.main()
