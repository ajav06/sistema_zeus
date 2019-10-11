/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domain;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Scorpion
 */
@Entity
@Table(name = "equipo_departamento")
@NamedQueries({
    @NamedQuery(name = "EquipoDepartamento.findAll", query = "SELECT e FROM EquipoDepartamento e"),
    @NamedQuery(name = "EquipoDepartamento.findByCodigo", query = "SELECT e FROM EquipoDepartamento e WHERE e.codigo = :codigo")})
public class EquipoDepartamento implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    
    @JoinColumn(name = "codigo_departamento", referencedColumnName = "codigo")
    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    private Departamento codigoDepartamento;
    
    @JoinColumn(name = "codigo_equipo", referencedColumnName = "codigo")
    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    private Equipo codigoEquipo;
    
    @JoinColumn(name = "codigo_estado_equipo", referencedColumnName = "codigo")
    @ManyToOne(optional = false, cascade = CascadeType.ALL)
    private EstadoEquipo codigoEstadoEquipo;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "codigoEquipoDepartamento")
    private List<Solicitudes> solicitudesList;

    public EquipoDepartamento() {
    }

    public EquipoDepartamento(Integer codigo) {
        this.codigo = codigo;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public Departamento getCodigoDepartamento() {
        return codigoDepartamento;
    }

    public void setCodigoDepartamento(Departamento codigoDepartamento) {
        this.codigoDepartamento = codigoDepartamento;
    }

    public Equipo getCodigoEquipo() {
        return codigoEquipo;
    }

    public void setCodigoEquipo(Equipo codigoEquipo) {
        this.codigoEquipo = codigoEquipo;
    }

    public EstadoEquipo getCodigoEstadoEquipo() {
        return codigoEstadoEquipo;
    }

    public void setCodigoEstadoEquipo(EstadoEquipo codigoEstadoEquipo) {
        this.codigoEstadoEquipo = codigoEstadoEquipo;
    }

    public List<Solicitudes> getSolicitudesList() {
        return solicitudesList;
    }

    public void setSolicitudesList(List<Solicitudes> solicitudesList) {
        this.solicitudesList = solicitudesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EquipoDepartamento)) {
            return false;
        }
        EquipoDepartamento other = (EquipoDepartamento) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "domain.EquipoDepartamento[ codigo=" + codigo + " ]";
    }
    
}