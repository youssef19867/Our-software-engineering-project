function addProduct() {
    const name = document.getElementById("productName").value;
    const price = document.getElementById("productPrice").value;
    const quantity = document.getElementById("productQuantity").value;

    const newRow = `
        <tr>
            <td>${name}</td>
            <td>${price}</td>
            <td>${quantity}</td>
            <td>
                <button onclick="editProduct(this)">Edit</button>
                <button onclick="deleteProduct(this)">Delete</button>
            </td>
        </tr>
    `;

    document.getElementById("productTable").insertAdjacentHTML("beforeend", newRow);
}

function editProduct(button) {
    const row = button.parentNode.parentNode;
    const name = row.cells[0].textContent;
    const price = row.cells[1].textContent;
    const quantity = row.cells[2].textContent;

    // You can implement an edit modal or inline editing here
    // For simplicity, let's just log the data for now
  
}

function deleteProduct(button) {
    const row = button.parentNode.parentNode;
    row.remove();
}