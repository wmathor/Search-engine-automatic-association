package Servlet;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONArray;
import Algorithm.Trie;

public class SearchServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Set<String> setData = new HashSet<String>();
		HttpSession session = request.getSession();
		Trie trie = (Trie) session.getAttribute("trie");
		Connection conn = null;
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		String URL = "jdbc:mysql://localhost:3306/search?useUnicode=true&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, "search", "search");
			response.setCharacterEncoding("utf-8");
			String keyword = request.getParameter("keyword");
			if (keyword != null || keyword != "") {
				keyword = java.net.URLDecoder.decode(keyword, "utf-8");
				List<String> res = trie.getData(keyword);
				if (res != null)
					for (String i : res)
						setData.add(i);
				if (setData != null)
				response.getWriter().write(
						JSONArray.fromObject(setData).toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}