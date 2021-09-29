package com.prueba.service;

import java.util.ArrayList;
import java.util.List;

import javax.websocket.server.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import org.springframework.http.MediaType;

import com.prueba.dao.ClienteDAO;
import com.prueba.model.Cliente;

@Path("/clientes")
public class ClienteService {
	
	ClienteDAO clienteDAO = new ClienteDAO();
	//Servicio REST
	@GET
	@Path("/lista") // Path: http://localhost:8080/kevin/services/clientes/lista
	@Consumes({MediaType.APPLICATION_JSON_VALUE})
	@Produces({MediaType.APPLICATION_JSON_VALUE})
	public List<Cliente> verClientes() {
		List<Cliente> listaClientes = new ArrayList<>();
		listaClientes = clienteDAO.obtenerClientes();
		return listaClientes;
	}
	
	@POST // Path: http://localhost:8080/kevin/services/clientes
	@Consumes({MediaType.APPLICATION_JSON_VALUE})
	@Produces({MediaType.APPLICATION_JSON_VALUE})
	public String nuevoCliente(Cliente cliente){
		clienteDAO.agregar(cliente);
		return "Cliente Agregado";
	}
	
	@PUT
    public String Actualizar(Cliente cliente){
		clienteDAO.editar(cliente);
		return "Cliente Actualizado";
    }
    
   @DELETE
   @Path("/{idCliente}")
   @Consumes({MediaType.APPLICATION_JSON_VALUE})
   @Produces({MediaType.APPLICATION_JSON_VALUE})
      public String Eliminar(@PathParam("idCliente") Integer id){
	   clienteDAO.eliminar(id);
       return "Cliente Eliminado";
    }
}
