package agencialaercio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import agencialaercio.model.Viagem;

public class DAOViagem {
	
	private final String url = "jdbc:mysql://localhost:3306/agencia";
	private final String usuario = "root"; 
	private final String senha = "root";
	private final String driverBanco = "com.mysql.jdbc.Driver";
	private Connection conexao = null;
	private PreparedStatement preparedStatement = null;

	public DAOViagem() throws Exception {
		Class.forName(driverBanco);
		conexao = DriverManager.getConnection(url, usuario, senha);
	}
	
	public void incluir(Viagem viagem) throws Exception {
		
		final String instrucao_sql = "INSERT INTO viagens (viajante,destino,temGuia) VALUES (?,?,?);";
		
			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setString(1, viagem.getViajante());			
			preparedStatement.setString(2, viagem.getDestino());
			preparedStatement.setBoolean(3, viagem.isTemGuia());
			preparedStatement.executeUpdate();			
		
	}
	
	
	public void excluir(Viagem viagem) throws Exception  {
		
		final String instrucao_sql = "DELETE FROM viagens WHERE id = ?";
		
			preparedStatement = conexao.prepareStatement(instrucao_sql);
			
			preparedStatement.setInt(1, viagem.getId());
			
			preparedStatement.executeUpdate();
			
			
	}
	
	
	public void alterar(Viagem viagem) throws Exception {
		
		final String instrucao_sql = "UPDATE viagens set id = ?, viajante = ?, destino = ?, temGuia = ? WHERE id = ?";

			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setInt(1, viagem.getId());
			preparedStatement.setString(2, viagem.getViajante());			
			preparedStatement.setString(3, viagem.getDestino());
			preparedStatement.setBoolean(4, viagem.isTemGuia());
			preparedStatement.setInt(5, viagem.getId());
			
			preparedStatement.executeUpdate();
			

	}
	
	public Viagem consultar(Viagem viagem) throws Exception {
		final String instrucao_sql = "SELECT * FROM viagens WHERE id = ?";

			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setInt(1, viagem.getId());
			
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				
				viagem.setId(resultSet.getInt("id"));
				viagem.setViajante(resultSet.getString("viajante"));
				viagem.setDestino(resultSet.getString("destino"));
				viagem.setTemGuia(resultSet.getBoolean("temGuia"));
				
			}

		
		return viagem;
	}
}