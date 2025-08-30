import javax.swing.JOptionPane;

public class Mensaje {
    public static void main(String[] args) {
        if (args.length > 0 && args[0].equals("input")) {
            String message = args[1];

            // Si hay más de 2 argumentos → son las opciones
            if (args.length > 2) {
                String[] opciones = new String[args.length - 2];
                System.arraycopy(args, 2, opciones, 0, args.length - 2);

                String seleccion = (String) JOptionPane.showInputDialog(
                        null,
                        message,
                        "Selecciona una opción",
                        JOptionPane.QUESTION_MESSAGE,
                        null,
                        opciones,
                        opciones[0] // valor por defecto
                );
                System.out.println(seleccion);
            } else {
                // Entrada libre
                String input = JOptionPane.showInputDialog(null, message);
                System.out.println(input);
            }
        } else if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            JOptionPane.showMessageDialog(null, "No message provided.");
        }
    }
}

