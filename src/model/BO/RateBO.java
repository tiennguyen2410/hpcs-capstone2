package model.BO;

import java.util.ArrayList;

import model.BEAN.Rate;
import model.DAO.RateDAO;

public class RateBO {
	RateDAO rateDAO = new RateDAO();
	public Rate getRate(int id_caregiver) {
		return rateDAO.getRate(id_caregiver);
	}
}

