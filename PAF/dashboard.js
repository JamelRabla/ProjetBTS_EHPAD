// Fonction pour ajouter un employé
function addEmployee(employeeName) {
    const employeeList = document.getElementById('employee-list');
    const newEmployee = document.createElement('li');
    newEmployee.textContent = employeeName;
    employeeList.appendChild(newEmployee);
}

// Fonction pour ajouter un patient
function addPatient(patientName) {
    const patientList = document.getElementById('patient-list');
    const newPatient = document.createElement('li');
    newPatient.textContent = patientName;
    patientList.appendChild(newPatient);
}

// Gestionnaire d'événement pour soumettre le formulaire d'ajout d'employé
document.getElementById('add-employee-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const employeeName = document.getElementById('employee-name').value;
    addEmployee(employeeName);
    // Réinitialiser le formulaire
    document.getElementById('employee-name').value = '';
});

// Gestionnaire d'événement pour soumettre le formulaire d'ajout de patient
document.getElementById('add-patient-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const patientName = document.getElementById('patient-name').value;
    addPatient(patientName);
    // Réinitialiser le formulaire
    document.getElementById('patient-name').value = '';
});