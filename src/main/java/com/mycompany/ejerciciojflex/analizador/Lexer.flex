/*primer seccion: codigo de usuario*/
package com.mycompany.ejerciciojflex.interfazes;
import java.util.ArrayList;

%%

/*segunda seccion: configuracion*/
%class Lexer
%public
%unicode
%line
%column
%int
%{
    private String[] arregloEnteros;
    private ArrayList listaEnteros = new ArrayList<String[]>();

    public void llenarArregloEnteros(String entero, int linea, int columna){
        arregloEnteros = new String[3];
        arregloEnteros[0] = entero;
        arregloEnteros[1] = linea + "";
        arregloEnteros[2] = columna + "";
        listaEnteros.add(arregloEnteros);
    }
    
    public ArrayList getListaEnteros(){
        return listaEnteros;
    }

    private char[] vocales = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    private int contador1vocal = 0;
    private int contador2vocal = 0;
    private int contador3vocal = 0;
    private int contador4vocal = 0;
    private int contador5vocal = 0;

    public void aumentarContadores(String lexema){
        int contador = 0;
        for(int i=0; i<lexema.length(); i++){
            for(int j=0; j<vocales.length; j++){
                if(lexema.charAt(i)==vocales[j]){
                    contador++;
                }
            }
        }
        System.out.println(contador);
        if(contador==1){
            contador1vocal++;
        } else if(contador==2){
            contador2vocal++;
        } else if(contador==3){
            contador3vocal++;
        } else if(contador==4){
            contador4vocal++;
        } else if(contador==5){
            contador5vocal++;
        }
    }

    public int getContador1(){
        return contador1vocal;
    }
    public int getContador2(){
        return contador2vocal;
    }
    public int getContador3(){
        return contador3vocal;
    }
    public int getContador4(){
        return contador4vocal;
    }
    public int getContador5(){
        return contador5vocal;
    }
%}

NUMERO = [0-9]+	
VOCAL = [aeiouAEIOU]
LETRAS = [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]
EXPRESION = (({LETRAS})*({VOCAL})({LETRAS})*)+ 

%%


/*tercer seccion: reglase lexicas*/
{NUMERO} {llenarArregloEnteros(yytext(), yyline+1, yycolumn+1);}
{EXPRESION} {aumentarContadores(yytext());}
[^] 	{}