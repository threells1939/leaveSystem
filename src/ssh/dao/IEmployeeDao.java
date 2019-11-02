package ssh.dao;

import ssh.domain.Employee;


public interface IEmployeeDao {

	Employee findEmployeeByName(String name);

	

}
