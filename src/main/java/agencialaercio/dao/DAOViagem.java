package agencialaercio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import agencialaercio.model.Viagem;

public class DAOViagem {
	
	private final String url = "jdbc:postgresql://localhost:5432/postgres";
	private final String usuario = "postgres"; 
	private final String senha = "aluno123";
	private final String driverBanco = "org.postgresql.Driver";
	private Connection conexao = null;
	private PreparedStatement preparedStatement = null;

	public DAOViagem() throws Exception {
		Class.forName(driverBanco);
		conexao = DriverManager.getConnection(url, usuario, senha);
	}
	
	public void incluir(Viagem viagem) throws Exception {
		
		final String instrucao_sql = "INSERT INTO alunos (id, matricula, nome, teste, prova) VALUES(?,?,?,?,?)";
		
			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setInt(1, viagem.getId());
			preparedStatement.setString(2, viagem.getMatricula());
			preparedStatement.setString(3, viagem.getNome());
			preparedStatement.setDouble(4, viagem.getTeste());
			preparedStatement.setDouble(5, viagem.getProva());
			
			preparedStatement.executeUpdate();
			
		
	}
	
	
	public void excluir(Viagem viagem) throws Exception  {
		
		final String instrucao_sql = "DELETE FROM alunos WHERE matricula = ?";
		
			preparedStatement = conexao.prepareStatement(instrucao_sql);
			
			preparedStatement.setString(1, viagem.getMatricula());
			
			preparedStatement.executeUpdate();
			
			
	}
	
	
	public void alterar(Viagem viagem) throws Exception {
		
		final String instrucao_sql = "UPDATE alunos set id = ?, nome = ?, teste = ?, prova = ? WHERE matricula = ?";

			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setInt(1, viagem.getId());
			preparedStatement.setString(5, viagem.getMatricula());
			preparedStatement.setString(2, viagem.getNome());
			preparedStatement.setDouble(3, viagem.getTeste());
			preparedStatement.setDouble(4, viagem.getProva());
			
			preparedStatement.executeUpdate();
			

	}
	
	public Viagem consultar(Viagem viagem) throws Exception {
		final String instrucao_sql = "SELECT * FROM alunos WHERE matricula = ?";

			preparedStatement = conexao.prepareStatement(instrucao_sql);
			preparedStatement.setString(1, viagem.getMatricula());
			
			
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				
				viagem.setId(resultSet.getInt("id"));
				viagem.setMatricula(resultSet.getString("matricula"));
				viagem.setNome(resultSet.getString("nome"));
				viagem.setTeste(resultSet.getDouble("teste"));
				viagem.setProva(resultSet.getDouble("prova"));
				
			}

		
		return viagem;
	}
}