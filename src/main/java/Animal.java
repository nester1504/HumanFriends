import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Базовый класс для домашних животных
public class Animal {
    private String name;
    private String type;
    private Date birthDate;
    private List<String> commands;

    public Animal(String name, String type, Date birthDate) {
        this.name = name;
        this.type = type;
        this.birthDate = birthDate;
        this.commands = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public List<String> getCommands() {
        return commands;
    }

    public void teachNewCommand(String command) {
        commands.add(command);
    }
}