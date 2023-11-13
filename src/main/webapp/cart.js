// Define an empty array to store cart items
let cartItems = [];

// Function to add items to the cart
// Function to add items to the cart
function addToCart(itemName, itemPrice) {
    // Create a new item object
    const newItem = {
        name: itemName,
        price: itemPrice,
        quantity: 1 // You can start with a quantity of 1 and adjust as needed
    };

    // Check if the item is already in the cart
    const existingItem = cartItems.find(item => item.name === itemName);

    if (existingItem) {
        // If the item already exists in the cart, increase its quantity
        existingItem.quantity++;
    } else {
        // If it's a new item, add it to the cart
        cartItems.push(newItem);
    }
    saveCartToLocalStorage();

    // Call a function to update the cart display


    // Store the updated cart in localStorage
    localStorage.setItem('cart', JSON.stringify(cartItems));

    // Show the notification
    const notification = document.getElementById('cart-notification');
    notification.textContent = `${itemName} added to cart`;
    notification.classList.add('show');

    // Hide the notification after 3 seconds (3000 milliseconds)
    setTimeout(() => {
        notification.classList.remove('show');
    }, 3000);

    // Call a function to update the cart display and local storage
    updateCartDisplay();
    updateLocalStorage();
}

// Function to retrieve cart data from localStorage
function getCartFromStorage() {
    const storedCart = localStorage.getItem('cart');
    if (storedCart) {
        cartItems = JSON.parse(storedCart);
        updateCartDisplay();
    }
}

// Call getCartFromStorage when the page loads to retrieve cart data
window.addEventListener('load', getCartFromStorage);

// Function to update the cart display
function updateCartDisplay() {
    // Get the cart table body element
    const cartTableBody = document.querySelector('#cart-items tbody');
    const emptyCartMessage = document.getElementById('empty-cart-message');
    // Clear the current content of the cart table body
    cartTableBody.innerHTML = '';

    // Iterate through the cartItems array and populate the cart table
    if (cartItems.length === 0) {
        // If the cart is empty, display the empty cart message and hide the table
        emptyCartMessage.style.display = 'block';
    } else {
        emptyCartMessage.style.display = 'none';
        cartItems.forEach(item => {
            const row = cartTableBody.insertRow();
            row.innerHTML = `
            <td>${item.name}</td>
            <td>Rs. ${item.price.toFixed(2)}</td>
            <td>${item.quantity}</td>
            <td>Rs. ${(item.price * item.quantity).toFixed(2)}</td>
            <td><button onclick="removeFromCart('${item.name}')" style="background-color: red; color: white;">Remove</button></td>
        `;
        });
    }
    // Call a function to update the total amount
    updateTotalAmount();
}

// Function to update the total amount in the cart
function updateTotalAmount() {
    // Get the total amount elements
    const totalAmountTable = document.querySelector('#cart-items tfoot #total-amount');
    const totalAmountDiv = document.querySelector('#shopping-cart p span');

    // Calculate the total amount by summing up the prices of all items in the cart
    const total = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);

    // Display the total amount in both places
    totalAmountTable.textContent = `Rs. ${total.toFixed(2)}`;
    totalAmountDiv.textContent = `Rs. ${total.toFixed(2)}`;

    // Store the total amount in a variable
    const totalAmount = total.toFixed(2);

    // Update the onclick attribute of the "Pay Now" button to call payNow() with the total amount
    const payNowButton = document.querySelector('#shopping-cart button.btn-custom');
    payNowButton.setAttribute('onclick', `payNow(${totalAmount})`);
}
function payNow(totalAmount) {
    // You can now use the totalAmount in this function
    console.log(`Total Amount to Pay: Rs. ${totalAmount}`);

    // Call the pay() function with the totalAmount
    pay(totalAmount);
}

function loadCartFromLocalStorage() {
    const cartData = localStorage.getItem('cart');
    if (cartData) {
        cartItems = JSON.parse(cartData);
    }
}

// Function to save cart data to localStorage
function saveCartToLocalStorage() {
    localStorage.setItem('cart', JSON.stringify(cartItems));
}

// Call the function to load cart data when the page loads
loadCartFromLocalStorage();

// Function to remove an item from the cart
function removeFromCart(itemName) {
    // Find the index of the item to remove
    const index = cartItems.findIndex(item => item.name === itemName);


    if (index !== -1) {
        // Remove the item from the cartItems array
        cartItems.splice(index, 1);

        // Save the updated cart data to localStorage
        saveCartToLocalStorage();

        // Call a function to update the cart display
        updateCartDisplay();
    }
}
