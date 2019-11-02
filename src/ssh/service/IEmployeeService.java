package ssh.service;

import ssh.domain.Employee;


public interface IEmployeeService {

	Employee findEmployeeByName(String name);


}
