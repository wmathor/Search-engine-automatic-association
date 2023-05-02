package Servlet;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Algorithm.Trie;

@SuppressWarnings("serial")
public class InitServlet extends HttpServlet {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Trie trie = new Trie();
		request.setCharacterEncoding("UTF-8");
		String sql = "select * from vocabulary";
		String URL = "jdbc:mysql://localhost:3306/search?useUnicode=true&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, "search", "search");
			
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String word = rs.getString(1);
				trie.insert(word);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("trie", trie);
		response.sendRedirect("search.jsp");
	}
}