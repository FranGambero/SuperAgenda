/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda.model;

import java.util.*;

/**
 *
 * @author Fran Gambero
 */
public class AgendaFactory implements AgendaFacade{
    
    private Collection<Persona> agenda = new ArrayList<>();

    public Collection<Persona> getAgenda() {
        return agenda;
    }

    public void setAgenda(Collection<Persona> agenda) {
        this.agenda = agenda;
    }

    public AgendaFactory() {
        init();
    }
    
    private void init(){
        agenda.add(new Persona(1, "Fran", "Gambero", "takox@uma.es", "1111111"));
        agenda.add(new Persona(2, "Andrea", "Rodríguez", "myane@photos.com", "222222"));
        agenda.add(new Persona(3, "Eduardo", "Pertierra", "tuh_edu_rexulon@hotmail.com", "3333333"));
        agenda.add(new Persona(4, "Estrella", "Al-bannay", "selene@art.es", "4444444"));
        agenda.add(new Persona(5, "Jesus", "Porras", "limonerox@tumblr.com", "5555555"));
    }

    @Override
    public int createPersona(Persona persona) {
        //Random rnd = new Random();
        //persona.setId(rnd.nextInt());
        
        agenda.add(persona);
        
        return persona.getId();
    }

    @Override
    public void updatePersona(Persona nuevaPersona) {
        ArrayList<Persona> agendaCopia = (ArrayList)agenda; //Copiamos nuestta agenda para actualizar
        int index = 0;
        
        for(Persona p : agenda){
            if(nuevaPersona.getId() == p.getId()){ //Si encontramos el id de la persona deseada, sobreescribimos la info.
                agendaCopia.set(index, nuevaPersona);
                break;
            } else{
                index++;
            }
        }
        agenda = agendaCopia;
    }

    @Override
    public Persona findPersona(int id) {
        for(Persona p: agenda){
            if(p.getId() == id){
                return p;
            }
        }
        return null;
    }

    @Override
    public void deletePersona(int id) {
        Collection<Persona> nuevaAgenda = new ArrayList<>();
        
        for(Persona p : agenda){
            if(p.getId() != id){
                nuevaAgenda.add(p);
            }
        }
        agenda = nuevaAgenda;
    }
    
}
