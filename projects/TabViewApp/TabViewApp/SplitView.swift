@State private var employeeIds: Set<Employee.ID> = []


var body: some View {
    NavigationSplitView {
        List(model.employees, selection: $employeeIds) { employee in
            Text(employee.name)
        }
    } detail: {
        EmployeeDetails(for: employeeIds)
    }
}