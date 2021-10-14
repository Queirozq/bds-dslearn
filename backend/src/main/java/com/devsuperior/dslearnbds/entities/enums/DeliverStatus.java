package com.devsuperior.dslearnbds.entities.enums;

public enum DeliverStatus {

    PENDING(1, "PENDING"),
    ACCEPTED(2, "ACCEPTED"),
    REJECTED(3, "REJECTED");

    private int cod;
    private String description;

    DeliverStatus(int cod, String description){
        this.cod = cod;
        this.description = description;
    }

    public int getCod(){
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

    public static DeliverStatus toEnum(Integer id) {
        for (DeliverStatus x : DeliverStatus.values()) {
            if (x.getCod() == id) {
                return x;
            }
        }
        throw new IllegalArgumentException("Id inválido" + id);
    }
}
