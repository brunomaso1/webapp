package clases.historialViaje;

import clases.viaje.*;
import clases.dominio.*;
import clases.configuration.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import org.springframework.web.client.RestTemplate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClientesLogica {

	private final static Logger LOGGER = Logger.getLogger(ClientesLogica.class.getName());
	
	public Cliente[] obtenerClientes(String sucursalId) {
		RestTemplate restTemplate = new RestTemplate();

		//Obtiene la respuesta.
		// Falta implementar.
		Cliente[] clientes = restTemplate.getForObject(Configuration.restFindClientesGet(sucursalId), Cliente[].class);
		return clientes;
	}
}