package model.BO;

import java.util.ArrayList;

import model.BEAN.Comment;
import model.DAO.CommentDAO;

public class CommentBO {
		CommentDAO commentDAO = new CommentDAO();
		public ArrayList<Comment> getCaregiver(int id_caregiver) {
			return commentDAO.getListComment(id_caregiver);
		}
}
