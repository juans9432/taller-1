defmodule Util do

  def input_data(message, :string)do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input(message, :string)do
    input_data(message, :string)
  end

  # Clausula
  def input(message, :float) do
    try do
          message
    |> input_data(:string)
    |> String.to_float()
    rescue
      ArgumentError ->
        show_message("Error: El valor ingresado no es un número válido.")


        input(message, :float)
    end
  end

  #Input con manejo de errores usando try-rescue
  def input(message, :integer) do
    try do
      message
      |> input_data(:string)
      |> String.to_integer()
    rescue
      ArgumentError ->
        show_message("Error: El valor ingresado no es un entero válido.")

      input(message, :integer)
    end
  end

  def input_opcion(mensaje, opciones) do
    args = ["-cp", ".", "Mensaje", "input", mensaje] ++ Enum.map(opciones, &to_string/1)
    {respuesta, 0} = System.cmd("java", args)
    String.trim(respuesta)
  end

end
