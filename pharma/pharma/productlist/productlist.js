function addProduct() {
    const name = document.getElementById("productName").value;
    const price = document.getElementById("productPrice").value;
    const quantity = document.getElementById("productQuantity").value;
    const expirydate = document.getElementById("Expirydate").value;

    console.log("Form data:", name, price, quantity, expirydate); // Add this line to check form data

    const newRow = `
        <tr>
            <td>${name}</td>
            <td>${price}</td>
            <td>${quantity}</td>
            <td>${expirydate}</td>
            <td>
                <button onclick="editProduct(this)">Edit</button>
                <button onclick="deleteProduct(this)">Delete</button>
            </td>
        </tr>
    `;

    console.log("New row HTML:", newRow); // Add this line to check the new row HTML

    document.getElementById("productTable").insertAdjacentHTML("beforeend", newRow);

    // Hide the add product form after adding a product
    document.getElementById("addProductForm").style.display = "none";

    // Reset input fields
    document.getElementById("productName").value = "";
    document.getElementById("productPrice").value = "";
    document.getElementById("productQuantity").value = "";
}

function showAddProductForm() {
    const addProductForm = document.getElementById("addProductForm");
    if (addProductForm.style.display === "none") {
        addProductForm.style.display = "block";
    } else {
        addProductForm.style.display = "none";
    }
}
function editProduct(button) {
    const row = button.parentNode.parentNode;
    const cells = row.cells;

    // Replace text content with input fields for editing
    for (let i = 0; i < cells.length - 1; i++) {
        const cell = cells[i];
        let input = document.createElement("input");
        input.type = "text";
        input.value = cell.textContent;
        cell.textContent = "";
        cell.appendChild(input);
    }

    // Change "Edit" button to "Save"
    button.textContent = "Save";
    button.setAttribute("onclick", "saveProduct(this)");
}

function saveProduct(button) {
    const row = button.parentNode.parentNode;
    const cells = row.cells;

    // Replace input fields with text content
    for (let i = 0; i < cells.length - 1; i++) {
        const cell = cells[i];
        const input = cell.querySelector("input");
        cell.textContent = input.value;
    }

    // Change "Save" button back to "Edit"
    button.textContent = "Edit";
    button.setAttribute("onclick", "editProduct(this)");
}

function deleteProduct(button) {
    const row = button.parentNode.parentNode;
    row.remove();
}
// Function to fetch product data from the server
function fetchProductData() {
    // Make an AJAX request to fetch product data
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                const productData = JSON.parse(xhr.responseText);
                populateProductTable(productData); // Call function to populate table
            } else {
                console.error("Error fetching product data:", xhr.statusText);
            }
        }
    };
    xhr.open("GET", "productlistdb.php", true);
    xhr.send();
}
