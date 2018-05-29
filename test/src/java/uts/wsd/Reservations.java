/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "reservations")
public class Reservations implements Serializable {

    @XmlElement(name = "reservation")
    private ArrayList<Reservation> list = new ArrayList<Reservation>();

    public Reservations() {
    }

    public ArrayList<Reservation> getList() {
        return list;
    }

    public void setList(ArrayList<Reservation> list) {
        this.list = list;
    }

    public ArrayList<Reservation> getReservationsByTitle(String title) {
        ArrayList<Reservation> reservationList = new ArrayList<>();
        for (Reservation reservation : list) {
            if (reservation.getTitle().equals(title)) {
                reservationList.add(reservation);
            }
        }
        return reservationList;
    }

    public void addReservation(Reservation reservation) {
        list.add(reservation);
    }

    public void addAll(ArrayList<Reservation> reservations) {
        list.removeAll(list);
        for (Reservation reservation : reservations) {
            list.add(reservation);
        }

    }
    
    public ArrayList<Reservation> getReservationsByUsername(String username) {
         ArrayList<Reservation> reservationList = new ArrayList<>();
        for (Reservation reservation : list) {
            if (reservation.getUsername().equals(username)) {
                reservationList.add(reservation);
            }
        }
        return reservationList;
    }  
}
