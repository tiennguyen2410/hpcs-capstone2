package model.DAO;


import java.util.List;

import model.BEAN.Caregiver;

public interface CaregiverDAOXuLyPhanTrang {
	public List<Caregiver> getListCaregiver(List<Caregiver> list, int start , int end);
}
