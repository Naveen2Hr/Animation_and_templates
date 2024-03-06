<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,500&display=swap");

      @use postcss-preset-env {
        stage: 0;
      }

      :root {
        --color-background: #fae3ea;
        --color-primary: #fc8080;
        --font-family-base: Poppin, sans-serif;
        --font-size-h1: 1.25rem;
        --font-size-h2: 1rem;
      }

      * {
        box-sizing: inherit;
        font-family: "Poppins", sans-serif;
      }

      html {
        box-sizing: border-box;
      }

      body {
        background-color: var(--color-background);
        display: grid;
        font-family: var(--font-family-base);
        line-height: 1.5;
        margin: 0;
        min-block-size: 100vh;
        padding: 5vmin;
        place-items: center;
      }

      address {
        font-style: normal;
      }

      button {
        border: 0;
        color: inherit;
        cursor: pointer;
        font: inherit;
      }

      fieldset {
        border: 0;
        margin: 0;
        padding: 0;
      }

      h1 {
        font-size: var(--font-size-h1);
        line-height: 1.2;
        margin-block: 0 1.5em;
      }

      h2 {
        font-size: var(--font-size-h2);
        line-height: 1.2;
        margin-block: 0 0.5em;
      }

      legend {
        font-weight: 600;
        margin-block-end: 0.5em;
        padding: 0;
      }

      input {
        border: 0;
        color: inherit;
        font: inherit;
      }

      input[type="radio"] {
        accent-color: var(--color-primary);
      }

      table {
        border-collapse: collapse;
        inline-size: 100%;
      }

      tbody {
        color: #b4b4b4;
      }

      td {
        padding-block: 0.125em;
      }

      tfoot {
        border-top: 1px solid #b4b4b4;
        font-weight: 600;
      }

      .align {
        display: grid;
        place-items: center;
      }

      .button {
        align-items: center;
        background-color: var(--color-primary);
        border-radius: 999em;
        color: #fff;
        display: flex;
        gap: 0.5em;
        justify-content: center;
        padding-block: 0.75em;
        padding-inline: 1em;
        transition: 0.3s;
      }

      .button:focus,
      .button:hover {
        background-color: #e96363;
      }

      .button--full {
        inline-size: 100%;
      }

      .card {
        border-radius: 1em;
        background-color: var(--color-primary);
        color: #fff;
        padding: 1em;
      }

      .form {
        display: grid;
        gap: 2em;
      }

      .form__radios {
        display: grid;
        gap: 1em;
      }

      .form__radio {
        align-items: center;
        background-color: #fefdfe;
        border-radius: 1em;
        box-shadow: 0 0 1em rgba(0, 0, 0, 0.0625);
        display: flex;
        padding: 1em;
      }

      .form__radio label {
        align-items: center;
        display: flex;
        flex: 1;
        gap: 1em;
      }

      .header {
        display: flex;
        justify-content: center;
        padding-block: 0.5em;
        padding-inline: 1em;
      }

      .icon {
        block-size: 1em;
        display: inline-block;
        fill: currentColor;
        inline-size: 1em;
        vertical-align: middle;
      }

      .iphone {
        background-color: #fbf6f7;
        background-image: linear-gradient(to bottom, #fbf6f7, #fff);
        border-radius: 2em;
        block-size: 812px;
        box-shadow: 0 0 1em rgba(0, 0, 0, 0.0625);
        inline-size: 375px;
        overflow: auto;
        padding: 2em;
      }
    </style>
  </head>

  <body>
    <div class="iphone">
      <header class="header">
        <h1>Checkout</h1>
      </header>

      <form action="https://httpbin.org/post" class="form" method="POST">
        <div>
          <h2>Order ID</h2>

          <div class="card">#675769879</div>
        </div>

        <fieldset>
          <legend>Payment Method</legend>

          <div class="form__radios">
            <div class="form__radio">
              <label for="visa"
                ><svg class="icon">
                  <use xlink:href="#icon-visa" /></svg
                >Visa Payment</label
              >
              <input checked id="visa" name="payment-method" type="radio" />
            </div>

            <div class="form__radio">
              <label for="paypal"
                ><svg class="icon">
                  <use xlink:href="#icon-paypal" /></svg
                >PayPal</label
              >
              <input id="paypal" name="payment-method" type="radio" />
            </div>

            <div class="form__radio">
              <label for="mastercard"
                ><svg class="icon">
                  <use xlink:href="#icon-mastercard" /></svg
                >Master Card</label
              >
              <input id="mastercard" name="payment-method" type="radio" />
            </div>
          </div>
        </fieldset>

        <div>
          <h2>Shopping Bill</h2>

          <table>
            <tbody>
              <tr>
                <td>Shipping fee</td>
                <td align="right">$5.43</td>
              </tr>
              <tr>
                <td>Discount 10%</td>
                <td align="right">-$1.89</td>
              </tr>
              <tr>
                <td>Price Total</td>
                <td align="right">$84.82</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td>Total</td>
                <td align="right">$88.36</td>
              </tr>
            </tfoot>
          </table>
        </div>

        <div>
          <button class="button button--full" type="submit">
            <svg class="icon">
              <use xlink:href="#icon-shopping-bag" /></svg
            >Check Out
          </button>
        </div>
      </form>
    </div>
  </body>
</html>
