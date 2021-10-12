package com.devsuperior.dslearnbds.entities.enums;


public enum ResourceType {

    LESSON_ONLY(1, "Lesson Only"),
    LESSON_TASK(2, "Lesson Task"),
    FORUM(3, "FORUM"),
    EXTERNAL_LINK(4, "External Link");

    private int cod;
    private String description;

    ResourceType(int cod, String description) {
        this.cod = cod;
        this.description = description;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public static ResourceType toEnum(Integer id) {
        for (ResourceType x : ResourceType.values()) {
            if (x.getCod() == id) {
                return x;
            }
        }
        throw new IllegalArgumentException("Id inválido" + id);
    }
}