# Login page elements
loginUserName = "xpath://input[@id='Email']"
loginPassword = "xpath://input[@id='Password']"
loginButton = "xpath://button[@type='submit']"
logoutButton = "xpath://a[contains(text(),'Logout')]"

# Add Customers
btnCustomers = "//a[@href='#']//p[contains(text(),'Customers')]"
btnCustomers1 = "//a[@href='/Admin/Customer/List']//p[contains(text(),'Customers')]"
btnAddNew = "//a[@class='btn btn-primary']"
inputEmail = "id:Email"
inputPassword = "name:Password"
inputFirstName = "name:FirstName"
inputLastName = "name:LastName"
inputDOB = "id:DateOfBirth"
saveButton = "//button[@name='save']"

# Delete Page
inputEmailOfUser = "//input[@name='SearchEmail']"
searchButton = "//button[@id='search-customers']"
editButton = "//a[contains(text(),'Edit')]"
deleteButton = "//span[@id='customer-delete']/i"

# Add customer role
btnCustomerRoles = "//a[@href='/Admin/CustomerRole/List']//p[contains(text(),' Customer roles')]"
createButtonCustomerRoles = "xpath://a[@href='/Admin/CustomerRole/Create']"
txtName = "//input[@name='Name']"
checkboxTax = "//input[@id='TaxExempt']"
btnChooseProduct = "//button[contains(text(),'Choose a product')]"
selectProduct = "(//button[contains(text(),'Select')])[1]"
saveButtonInCustomerRoles = "xpath://button[@name='save']"
