<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Page</title>
<style>
  /* CSS Styles */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('https://www.roastycoffee.com/wp-content/uploads/Depositphotos_148751621_L.jpg'); /* Set the background image */
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
  margin-left:50%;
    width: 400px;
    padding: 40px;
    background-color: rgba(255, 255, 255, 0.8); /* Set background color with opacity */
    border-radius: 12px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }

  h1 {
    text-align: center;
    color: #333;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-bottom: 30px;
  }

  .price-container {
    margin-bottom: 20px;
  }

  .total-price {
    font-weight: bold;
    font-size: 1.2em;
    color: #f39c12;
  }

  .payment-methods {
    margin-bottom: 20px;
  }

  .payment-methods label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
  }

  .payment-info {
    margin-top: 20px;
  }

  .payment-info label {
    display: block;
    margin-bottom: 5px;
  }

  .payment-info input {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }

  .payment-button {
    padding: 10px 20px;
    border: none;
    background-color: #3498db;
    color: white;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block;
    margin: 20px auto 0;
    text-align: center;
    text-decoration: none;
  }

  .payment-button:hover {
    background-color: #2980b9;
  }
</style>
</head>
<body>

<div class="container">
  <h1>Payment Details</h1>
  <div class="price-container">
    <p>Total Price: <span id="totalPrice"></span></p>
  </div>
  <div class="payment-methods">
    <label>Select Payment Method:</label>
    <input type="radio" id="gpay" name="payment_method" value="gpay">
    <label for="gpay">Google Pay</label>
    <input type="radio" id="phonepe" name="payment_method" value="phonepe">
    <label for="phonepe">PhonePe</label>
    <input type="radio" id="paytm" name="payment_method" value="paytm">
    <label for="paytm">Paytm</label>
    <input type="radio" id="debit_card" name="payment_method" value="debit_card">
    <label for="debit_card">Debit Card</label>
    <input type="radio" id="cash_on_delivery" name="payment_method" value="cash_on_delivery">
    <label for="cash_on_delivery">Cash on Delivery</label>
  </div>
  <div class="payment-info" id="payment_info"></div>
  <button class="payment-button" onclick="processPayment()">Proceed to Payment</button>
</div>

<script>
  function processPayment() {
    // Get the price query parameters from the URL
    const urlParams = new URLSearchParams(window.location.search);
    const prices = urlParams.getAll('price');

    let totalPrice = 0;
    for (let price of prices) {
      totalPrice += parseFloat(price);
    }

    const totalPriceElement = document.getElementById('totalPrice');

    // Update the total price on the payment page
    totalPriceElement.textContent = '$' + totalPrice.toFixed(2);
  }

  // JavaScript to show additional fields based on the selected payment method
  const paymentInfoContainer = document.getElementById('payment_info');
  const paymentMethods = document.querySelectorAll('input[name="payment_method"]');

  paymentMethods.forEach(method => {
    method.addEventListener('change', function() {
      const selectedMethod = this.value;
      paymentInfoContainer.innerHTML = ''; // Clear previous fields
      if (selectedMethod === 'debit_card') {
        paymentInfoContainer.innerHTML = `
          <label for="card_number">Card Number:</label>
          <input type="text" id="card_number" name="card_number" required><br>
          <label for="expiry_date">Expiry Date:</label>
          <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YYYY" required><br>
          <label for="cvv">CVV:</label>
          <input type="text" id="cvv" name="cvv" required><br>
        `;
      }
    });
  });

  // Call processPayment function when the page loads
  processPayment();
</script>

</body>
</html>