/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda.model;

/**
 *
 * @author alumno
 */
public interface AgendaFacade {
    public int createPersona(Persona persona);
    public void updatePersona(Persona persona);
    public Persona findPersona(int id);
    public void deletePersona(int id);
    
    /*public long createBook(Book book);
    public void updateBook(Book book);
    public Book findBook(long id);
    public void deleteBook(long id);*/
}
