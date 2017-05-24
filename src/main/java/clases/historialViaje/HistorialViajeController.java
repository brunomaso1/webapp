package clases.historialViaje;

import clases.accesControl.ACSessionServices;
import clases.configuration.Parametros;
import clases.dominio.Viaje;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controlador de las acciones respecto a los viajes.
 */
@Controller
@RequestMapping(path = "/historialViaje")
public class HistorialViajeController {

	//Logger
	private final static Logger LOGGER = Logger.getLogger(HistorialViajeController.class.getName());

	private HistorialViajeLogica hvl;
	private HistorialViajeControllerHelper vch;
	private ACSessionServices acss;

	public HistorialViajeController() {
		this.hvl = new HistorialViajeLogica();
		this.vch = new HistorialViajeControllerHelper();
		this.acss = new ACSessionServices();
	}

	@GetMapping
	//@PreAuthorize("hasAuthority('ROLE_USER')")
	public String showPage(HttpSession request, Model model) {
		String sucursalId = acss.getUserId();

		Viaje[] viajes = hvl.obtenerViajes(sucursalId);

		model.addAttribute("datosTablaHistorialViaje", vch.tablaHistorialViajeHtml(viajes));
		model.addAttribute("rawData1", vch.chartHistorialViajeDona(viajes));
		model.addAttribute("rawData2", vch.chartHistorialViajeLinea(viajes));
		model.addAttribute("rawData3", vch.chartHistorialViajeBarras(viajes));

		model.addAttribute("usuarioActual", acss.getUserName());

		return "historialViaje";
	}
}