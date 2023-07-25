package com.example.ejerciciogrupal1.models;

import java.time.LocalDate;
/**
 * @author  Juan Pablo Vásquez
 * Ándres Tapia
 * Victor Briso
 * Sebastián Araya
 * @version 1.0
 */

/**
 * Creación Clase Administrativo
 */
public class Administrativo extends Usuario {
    //Definición de atributos
    private String area;
    private String experienciaPrevia;

    /**
     *
     */

    public Administrativo() {
    }

    /**
     * @param area
     * @param experienciaPrevia
     */
    public Administrativo(String area, String experienciaPrevia) {
        this.area = area;
        this.experienciaPrevia = experienciaPrevia;
    }

    public Administrativo( String nombre, String tipo, String area, String experienciaPrevia) {
        super( nombre, tipo);
        this.area = area;
        this.experienciaPrevia = experienciaPrevia;
    }

    /**
     * @return area
     */
    public String getArea() {
        return this.area;
    }

    /**
     * @param area
     */
    public void setArea(String area) {
        this.area = area;
    }

    /**
     * @return experienciaPrevia
     */
    public String getExperienciaPrevia() {
        return this.experienciaPrevia;
    }

    /**
     * @param experienciaPrevia
     */
    public void setExperienciaPrevia(String experienciaPrevia) {
        this.experienciaPrevia = experienciaPrevia;
    }

    @Override
    public String toString() {
        return "Administrativo{" +
                "area='" + area + '\'' +
                ", experienciaPrevia='" + experienciaPrevia + '\'' +
                ", nombre='" + nombre + '\'' +
                ", tipo='" + tipo + '\'' +
                '}';
    }
}
