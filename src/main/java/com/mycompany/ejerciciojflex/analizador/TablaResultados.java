/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ejerciciojflex.analizador;

import java.util.ArrayList;
import javax.swing.JMenuItem;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author nroda
 */
public class TablaResultados {
    //Metodo que se encarga de llenar la table
    public static void llenarTablaEntero(JTable tabladatos, ArrayList listaEnteros) {
        DefaultTableModel model = new DefaultTableModel();
        model.addColumn("Entero");
        model.addColumn("Linea");
        model.addColumn("Columna");

        //Se llena la tabla
        int tamanio = listaEnteros.size();
        for (int i = 0; i < tamanio; i++) {
            String[] array = (String[])listaEnteros.get(i);
            model.addRow(array);
        }
        tabladatos.setModel(model);
    }
    
    //Metodo que se encarga de llenar la table
    public static void llenarTablaPalabras(JTable tabladatos, int contador1, int contador2, int contador3, int contador4, int contador5) {
        DefaultTableModel model = new DefaultTableModel();
        model.addColumn("Cantidad de vocales");
        model.addColumn("Total de palabras");
        String[] vocal1 = {"1 Vocal", contador1 + ""};
        String[] vocal2 = {"2 Vocales", contador2 + ""};
        String[] vocal3 = {"3 Vocales", contador3 + ""};
        String[] vocal4 = {"4 Vocales", contador4 + ""};
        String[] vocal5 = {"5 Vocales", contador5 + ""};
        model.addRow(vocal1);
        model.addRow(vocal2);
        model.addRow(vocal3);
        model.addRow(vocal4);
        model.addRow(vocal5);
        //Se llena la tabla
        tabladatos.setModel(model);
    }
}
