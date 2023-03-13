import javax.swing.*;
import java.awt.*;

public class ElderlyHelper {

    public static void main(String[] args) {
        // Create the login page
        JFrame loginFrame = new JFrame("Elderly Helper - Login");
        loginFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        loginFrame.setExtendedState(JFrame.MAXIMIZED_BOTH);
        loginFrame.setUndecorated(true);

        // Create the exit button
        JButton exitButton = new JButton("Close");
        exitButton.setPreferredSize(new Dimension(loginFrame.getWidth() / 16, loginFrame.getHeight() / 16));
        exitButton.addActionListener(e -> System.exit(0));

        // Create the text field and label
        JTextField codeField = new JTextField();
        codeField.setPreferredSize(new Dimension(loginFrame.getWidth() * 2 / 3, 30));
        codeField.setHorizontalAlignment(JTextField.CENTER);
        codeField.requestFocusInWindow();
        JLabel codeLabel = new JLabel("Write Your Code", SwingConstants.CENTER);
        codeLabel.setPreferredSize(new Dimension(loginFrame.getWidth() * 2 / 3, 50));
        codeLabel.setFont(new Font("Arial", Font.PLAIN, 36));

        // Create the login button
        JButton loginButton = new JButton("Login");
        loginButton.setPreferredSize(new Dimension(loginFrame.getWidth() / 2, 50));
        loginButton.addActionListener(e -> {
            if (codeField.getText().equals("YogaMagnetCheese24")) {
                loginFrame.dispose();
                createMainMenu();
            } else {
                JOptionPane.showMessageDialog(loginFrame, "Incorrect code. Please try again.");
                codeField.setText("");
                codeField.requestFocusInWindow();
            }
        });

        // Add the components to the login frame
        JPanel loginPanel = new JPanel(new BorderLayout());
        loginPanel.add(exitButton, BorderLayout.SOUTH);
        JPanel codePanel = new JPanel(new BorderLayout());
        codePanel.add(codeLabel, BorderLayout.NORTH);
        codePanel.add(codeField, BorderLayout.CENTER);
        loginPanel.add(codePanel, BorderLayout.CENTER);
        loginPanel.add(loginButton, BorderLayout.SOUTH);
        loginFrame.add(loginPanel);
        loginFrame.setVisible(true);
    }

    private static void createMainMenu() {
        // Create the main menu
        JFrame mainFrame = new JFrame("Elderly Helper - Main Menu");
        mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        mainFrame.setExtendedState(JFrame.MAXIMIZED_BOTH);
        mainFrame.setUndecorated(true);

        // Create the exit button
        JButton exitButton = new JButton("Close");
        exitButton.setPreferredSize(new Dimension(mainFrame.getWidth() / 16, mainFrame.getHeight() / 16));
        exitButton.addActionListener(e -> System.exit(0));

        // Create the menu buttons
        JButton eBoksButton = new JButton("Gå til E-boks");
        JButton borgerButton = new JButton("Gå til Borger.dk");
        JButton sundhedButton = new JButton("Gå til Sundhed.dk");
        JButton netbankButton = new JButton("Gå til Netbank");

        // Create the button panel
        JPanel buttonPanel = new JPanel(new GridLayout(2, 2));
        buttonPanel.add(eBoksButton);
        buttonPanel.add(borgerButton);
        buttonPanel.add(sundhedButton);
        buttonPanel.add(netbankButton);

        // Add the components to the main frame
        JPanel mainPanel = new JPanel(new BorderLayout());
        mainPanel.add(exitButton, BorderLayout.SOUTH);
        mainPanel.add(buttonPanel, BorderLayout.CENTER);
        mainFrame.add(mainPanel);
        mainFrame.setVisible(true);
    }
}
