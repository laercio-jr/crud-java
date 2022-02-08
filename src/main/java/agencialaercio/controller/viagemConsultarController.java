package agencialaercio.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agencialaercio.dao.DAOViagem;
import agencialaercio.model.Viagem;


@WebServlet("/viagem-consulta")
public class viagemConsultarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viagemConsultarController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher despacho = null;
		
		try {
		
		DAOViagem daoViagem = new DAOViagem();
		
		Viagem viagem = new Viagem();
		viagem.setId(Integer.parseInt(request.getParameter("txtId")));

		viagem = daoViagem.consultar(viagem);
		 
		request.setAttribute("al", viagem);
		
		despacho = request.getRequestDispatcher("index.jsp");
		despacho.forward(request, response);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
