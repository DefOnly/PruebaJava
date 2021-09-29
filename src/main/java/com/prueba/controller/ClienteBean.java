package com.prueba.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.prueba.dao.ClienteDAO;
import com.prueba.model.Cliente;
import com.prueba.service.ClienteService;

@ManagedBean(name = "clienteBean")
@RequestScoped
public class ClienteBean implements Serializable{

	private static final long serialVersionUID = 1L;
	@Autowired
	ClienteService clienteService;
	private Cliente cliente;
	
	public String agregar() {
		Cliente client = new Cliente();
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sessionMap.put("cliente", client);
		return "agregarCliente.xhtml";
	}
	
	public List<Cliente> obtenerClientes() {
		ClienteDAO clienteDAO = new ClienteDAO();
		return clienteDAO.obtenerClientes();
	}

	public void guardar() throws IOException {
		clienteService.nuevoCliente(cliente);
		ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();
		context.redirect("index.xhtml"); 
	}

}