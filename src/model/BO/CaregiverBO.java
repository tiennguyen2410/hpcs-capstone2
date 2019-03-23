package model.BO;

import java.util.ArrayList;

import model.BEAN.Caregiver;
import model.DAO.CaregiverDAO;

public class CaregiverBO {
		CaregiverDAO caregiverDAO = new CaregiverDAO();
		public ArrayList<Caregiver> getCaregiver() {
			return caregiverDAO.getCaregiver();
		}
}
