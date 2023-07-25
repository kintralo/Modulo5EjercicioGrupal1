package com.example.ejerciciogrupal1.models;

/**
 * @author  Juan Pablo Vásquez
 * Ándres Tapia
 * Victor Briso
 * Sebastián Araya
 * @version 1.0
 */

/**
 * Creación Clase Usuario
 */
public class Usuario {
    //Definición de atributos
    protected String nombre;
    protected String tipo;

    /**
     * Construct vacío
     */
    public Usuario() {
    }

    /**
     * @param nombre
     * @param tipo
     */
    public Usuario( String nombre, String tipo) {
        this.nombre = nombre;
        this.tipo= tipo;
    }

    /**
     * @return nombre
     */
    public String getNombre() {
        return this.nombre;
    }

    /**
     * @param nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return run, nombres, fechaNacimiento, edad.
     */
    @Override
    public String toString() {
        return "Usuarios{" +
                ", nombre='" + nombre + '\'' +
                ", tipo='" + tipo + '\'' +
                '}';
    }

    /**
     *
     * Retorna un mensaje que indica la edad del usuario.
     * @return Un mensaje con la edad del usuario.
     */
    public String mostrarEdad() {
        return "El usuario es: " + tipo  ;
    }

}

