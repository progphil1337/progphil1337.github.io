<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Leo</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..900;1,100..900&display=swap');

    :root {
      --light-creme: #F3EFE4;
      --textured-greige: #E6E1D6;
      --dark-brown: #2D231E;
      --olive-green: #82946F;
      --olive-green-footer: #60734D;
      --terracotta: #C0785C;
    }

    body, html {
      padding: 0;
      font-family: 'Noto Serif', serif;
      margin: 0;
      background-color: var(--textured-greige);
    }

    /* =========================================
       1. Mobile Layout (Default)
       ========================================= */
    .grid-layout {
      margin: 0 auto;
      padding: 0;
      min-height: 100dvh;
      display: grid;

      grid-template-rows: auto auto 1fr auto auto;

      grid-template-areas:
        "header"
        "sidebar"
        "content"
        "extra"
        "footer";
    }

    /* Map the HTML elements to the named areas above */
    .header  { grid-area: header; height: 300px }
    .sidebar { grid-area: sidebar; }
    .content { grid-area: content; }
    .extra   { grid-area: extra; }
    .footer  { grid-area: footer; }

    /* =========================================
       2. Tablet Layout (Screens 768px and up)
       ========================================= */
    @media (min-width: 768px) {
      .grid-layout {
        grid-template-columns: 300px 1fr;
        grid-template-rows: auto auto 1fr auto;
        grid-template-areas:
          "header  header"
          "sidebar content"
          "extra   content"
          "footer  footer";
      }
    }

    /* =========================================
       3. Desktop Layout (Screens 1024px and up)
       ========================================= */
    @media (min-width: 1024px) {
      .grid-layout {
        grid-template-columns: 300px 1fr 300px;
        grid-template-rows: auto 1fr auto;
        grid-template-areas:
          "header  header  header"
          "sidebar content extra"
          "footer  footer  footer";
      }
    }

    /* =========================================
       4. Basic Styling (Just for visibility)
       ========================================= */
    .grid-layout > * {
      padding: 2rem;
      background-color: var(--light-creme);
      text-align: center;
      font-weight: bold;
    }

    .header, .footer {
      color: white;
    }

    .header {
      position: relative; /* Acts as the anchor for the ::before element */
      overflow: hidden; /* Stops the blurred edges from bleeding outside the header */
      background-color: var(--olive-green);
      isolation: isolate;
      /* Add your height, padding, flexbox, etc. here */
    }

    /* This pseudo-element holds the background image */
    .header::before {
      content: "";
      position: absolute;
      top: -10px;
      left: -10px;
      right: -10px;
      bottom: -10px;


      background-image:
              linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
              url("https://permaculture-design.earth/wp-content/uploads/2024/12/IMG_5969.jpg");
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;



      filter: blur(3px);
      z-index: -1;
    }

    /* This ensures any text or content inside the header sits ON TOP of the blur */
    .header > * {
      position: relative;
      z-index: 1;
    }

    .footer {
      background-color: var(--olive-green-footer);
    }

    .content {
      /* Turns the content block into a new grid */
      display: grid;

      /* The space between your rows */
      gap: 16px;

      /*
        This creates 3 rows.
        'auto' means the row grows to fit the text inside it.
        '1fr' means the last row will stretch to fill any leftover vertical space
        if the sidebars are taller than the content.
      */
      grid-template-rows: auto;
    }

    /* Styling just so you can see the new nested rows */
    .content-row {
      background-color: var(--textured-greige);
      padding: 1.5rem;
      border-radius: 3px;
    }

    h1, h2, h3, h4 {
      color: var(--dark-brown)
    }

    hr {
      display: block;
      margin: 25px 0;
      border: none;
      border-top: 1px solid var(--dark-brown); /* Applies your custom brown */
      box-shadow: none;
    }
  </style>
</head>
<body>
  <div class="grid-layout">
    <header class="header">
      Header
    </header>
    <nav class="sidebar">
      <ul>Über mich</ul>
      <ul>Meine Vision</ul>
      <ul>Presse</ul>
    </nav>
    <main class="content">
      <div class="content-row">1</div>
      <div class="content-row">2</div>
      <div class="content-row">3</div>
      <div class="content-row">4</div>
      <div class="content-row">5</div>
    </main>
    <aside class="extra">
      <h2>Kontakt</h2>
     foo@bar.com
      <hr />
      <h2>Adresse</h2>
      Eschbachstraße 7<br />
      85447 Fraunberg-Maria Thalheim
      <br />
      <br />
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d325.27891022009584!2d12.033297705455698!3d48.364491481393664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479e191b86f8976f%3A0x82e2c00eda39d3de!2sEschbachstra%C3%9Fe%207%2C%2085447%20Fraunberg-Maria%20Thalheim!5e1!3m2!1sde!2sde!4v1784701752451!5m2!1sde!2sde" width="100%" height="quad" style="border:0;" allowfullscreen loading="lazy" referrerpolicy="strict-origin-when-cross-origin"></iframe>
    </aside>
    <footer class="footer">Footer</footer>
  </div>
</body>
</html>
