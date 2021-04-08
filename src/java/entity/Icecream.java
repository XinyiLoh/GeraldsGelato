/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "ICECREAM")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Icecream.findAll", query = "SELECT i FROM Icecream i")
    , @NamedQuery(name = "Icecream.findById", query = "SELECT i FROM Icecream i WHERE i.id = :id")
    , @NamedQuery(name = "Icecream.findByName", query = "SELECT i FROM Icecream i WHERE i.name = :name")
    , @NamedQuery(name = "Icecream.findByPrice", query = "SELECT i FROM Icecream i WHERE i.price = :price")
    , @NamedQuery(name = "Icecream.findByRating", query = "SELECT i FROM Icecream i WHERE i.rating = :rating")
    , @NamedQuery(name = "Icecream.findByImage", query = "SELECT i FROM Icecream i WHERE i.image = :image")
    , @NamedQuery(name = "Icecream.findByType", query = "SELECT i FROM Icecream i WHERE i.type = :type")
    , @NamedQuery(name = "Icecream.findByAvailable", query = "SELECT i FROM Icecream i WHERE i.available = :available")})
public class Icecream implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "ID")
    private String id;
    @Size(max = 40)
    @Column(name = "NAME")
    private String name;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PRICE")
    private Double price;
    @Lob
    @Size(max = 32700)
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "RATING")
    private Integer rating;
    @Size(max = 30)
    @Column(name = "IMAGE")
    private String image;
    @Size(max = 20)
    @Column(name = "TYPE")
    private String type;
    @Column(name = "AVAILABLE")
    private Integer available;
    @Lob
    @Size(max = 32700)
    @Column(name = "DESCL")
    private String descl;
    @Lob
    @Size(max = 32700)
    @Column(name = "INGREDIANTS")
    private String ingrediants;

    public Icecream() {
    }

    public Icecream(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getAvailable() {
        return available;
    }

    public void setAvailable(Integer available) {
        this.available = available;
    }

    public String getDescl() {
        return descl;
    }

    public void setDescl(String descl) {
        this.descl = descl;
    }

    public String getIngrediants() {
        return ingrediants;
    }

    public void setIngrediants(String ingrediants) {
        this.ingrediants = ingrediants;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Icecream)) {
            return false;
        }
        Icecream other = (Icecream) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Icecream[ id=" + id + " ]";
    }
    
}
