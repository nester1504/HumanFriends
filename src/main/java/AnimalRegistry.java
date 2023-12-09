import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

// Класс для управления реестром домашних животных
public class AnimalRegistry {
    // Список животных в реестре
    private List<Animal> animals;

    // Счетчик животных
    private int animalCounter;

    // Путь к файлу JSON
    private static final String JSON_FILE_PATH = "animal_data.json";

    // Формат даты
    private static final String DATE_FORMAT = "yyyy-MM-dd";

    // Конструктор класса
    public AnimalRegistry() {
        // Загрузка данных из файла JSON при создании экземпляра класса
        this.animals = loadFromJsonFile();
        this.animalCounter = animals.size();
    }

    // Метод для загрузки данных из файла JSON
    private List<Animal> loadFromJsonFile() {
        ObjectMapper mapper = new ObjectMapper();
        try {
            File file = new File(JSON_FILE_PATH);
            if (file.exists()) {
                // Чтение данных из файла JSON с использованием Jackson
                return mapper.readValue(file, new TypeReference<List<Animal>>() {
                });
            }
        } catch (IOException e) {
            System.out.println("Не удалось загрузить данные из файла. Начинаем с пустого реестра.");
        }
        // Возвращаем пустой список в случае ошибки
        return new ArrayList<>();
    }

    // Метод для сохранения данных в файл JSON
    private void saveToJsonFile() {
        ObjectMapper mapper = new ObjectMapper();
        try {
            // Запись данных в файл JSON с использованием Jackson
            mapper.writerWithDefaultPrettyPrinter().writeValue(new File(JSON_FILE_PATH), animals);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // Метод для добавления нового животного в реестр и сохранения данных в файл JSON
    public void addAnimal(Animal animal) {
        animals.add(animal);
        animalCounter++;
        saveToJsonFile();
    }

    // Метод для вывода списка команд для заданного животного
    public void listCommands(Animal animal) {
        System.out.println("Список команд для " + animal.getName() + ":");
        for (String command : animal.getCommands()) {
            System.out.println(command);
        }
    }

    // Метод для обучения новой команды для заданного животного
    public void teachNewCommand(Animal animal, String newCommand) {
        animal.teachNewCommand(newCommand);
        System.out.println("Команда '" + newCommand + "' обучена для " + animal.getName());
    }

    // Метод для вывода списка животных, отсортированных по дате рождения
    public void listAnimalsByBirthDate() {
        System.out.println("Список животных, отсортированный по дате рождения:");
        animals.sort(Comparator.comparing(Animal::getBirthDate));
        for (Animal animal : animals) {
            System.out.println("Имя: " + animal.getName() + ", Тип: " + animal.getType() + ", Дата рождения: "
                    + new SimpleDateFormat(DATE_FORMAT).format(animal.getBirthDate()));
        }
    }

    // Метод для вывода общего количества животных
    public void showTotalAnimalCount() {
        System.out.println("Общее количество животных: " + animalCounter);
    }

    // Метод для вывода меню и обработки выбора пользователя
    public void printMenu() {
        System.out.println("1. Добавить новое животное");
        System.out.println("2. Список команд для животного");
        System.out.println("3. Обучить новой команде");
        System.out.println("4. Список животных по дате рождения");
        System.out.println("5. Показать общее количество животных");
        System.out.println("0. Выход");
        System.out.print("Введите ваш выбор: ");
    }

    // Метод для парсинга даты из строки
    private Date parseDate(String input) {
        try {
            return new SimpleDateFormat(DATE_FORMAT).parse(input);
        } catch (ParseException e) {
            System.out.println("Неверный формат даты. Используется текущая дата как дата рождения.");
            return new Date();
        }
    }

    // Метод для создания животного на основе ввода пользователя
    private Animal createAnimalFromUserInput() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите имя животного: ");
        String name = scanner.nextLine();
        System.out.print("Введите тип животного (Собака/Кошка/Хомяк): ");
        String type = scanner.nextLine();
        System.out.print("Введите дату рождения животного (ГГГГ-ММ-ДД): ");
        Date birthDate = parseDate(scanner.nextLine());

        switch (type.toLowerCase()) {
            case "собака":
                return new Dog(name, birthDate);
            case "кошка":
                return new Cat(name, birthDate);
            case "хомяк":
                return new Hamster(name, birthDate);
            default:
                System.out.println("Неверный тип животного.");
                return null;
        }
    }

    // Метод для запуска программы
    public void start() {
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            printMenu();
            choice = scanner.nextInt();
            scanner.nextLine(); // Считываем символ новой строки

            switch (choice) {
                case 1:
                    Animal newAnimal = createAnimalFromUserInput();
                    if (newAnimal != null) {
                        addAnimal(newAnimal);
                        System.out.println("Животное успешно добавлено.");
                    }
                    break;
                case 2:
                    System.out.print("Введите имя животного: ");
                    String animalName = scanner.nextLine();
                    Animal specifiedAnimal = findAnimalByName(animalName);
                    if (specifiedAnimal != null) {
                        listCommands(specifiedAnimal);
                    } else {
                        System.out.println("Животное не найдено.");
                    }
                    break;
                case 3:
                    System.out.print("Введите имя животного: ");
                    String animalNameToTeach = scanner.nextLine();
                    Animal animalToTeach = findAnimalByName(animalNameToTeach);
                    if (animalToTeach != null) {
                        System.out.print("Введите новую команду для обучения: ");
                        String newCommand = scanner.nextLine();
                        teachNewCommand(animalToTeach, newCommand);
                    } else {
                        System.out.println("Животное не найдено.");
                    }
                    break;
                case 4:
                    listAnimalsByBirthDate();
                    break;
                case 5:
                    showTotalAnimalCount();
                    break;
                case 0:
                    System.out.println("Выход...");
                    break;
                default:
                    System.out.println("Неверный выбор. Пожалуйста, повторите.");
            }
        } while (choice != 0);
    }

    // Метод для поиска животного по имени
    private Animal findAnimalByName(String name) {
        for (Animal animal : animals) {
            if (animal.getName().equalsIgnoreCase(name)) {
                return animal;
            }
        }
        return null;
    }
}