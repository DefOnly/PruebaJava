package com.prueba.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.prueba.app.JPAUtil;
import com.prueba.model.Cliente;

public class ClienteDAO {
	EntityManager entity = JPAUtil.getEntityManagerFactory().createEntityManager();

	// agregar cliente
	public void agregar(Cliente cliente) {
		entity.getTransaction().begin();
		entity.persist(cliente);
		entity.getTransaction().commit();
	}

	// editar cliente
	public void editar(Cliente cliente) {
		entity.getTransaction().begin();
		entity.merge(cliente);
		entity.getTransaction().commit();
	}

	// buscar cliente
	public Cliente buscar(Integer id) {
		Cliente c = new Cliente();
		c = entity.find(Cliente.class, id);
		return c;
	}

	/// eliminar cliente
	public void eliminar(Integer id) {
		Cliente c = new Cliente();
		c = entity.find(Cliente.class, id);
		entity.getTransaction().begin();
		entity.remove(c);
		entity.getTransaction().commit();
	}

	// obtener todos los clientes
	public List<Cliente> obtenerClientes() {
		List<Cliente> listaClientes = new ArrayList<>();
		Query q = entity.createQuery("SELECT c FROM Cliente c");
		listaClientes = q.getResultList();
		return listaClientes;
	}

}
