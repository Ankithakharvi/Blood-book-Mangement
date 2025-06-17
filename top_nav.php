<!-- top_nav.php -->
<nav class="new-navbar">
  <div class="nav-container">
    <div class="nav-logo">🩸 Blood Bank</div>
    <div class="nav-toggle" onclick="toggleMenu()">☰</div>
    <ul class="nav-menu" id="navMenu">
      <li><a href="index.php">Home</a></li>
      <li><a href="log.php">Login</a></li>
    
      <li><a href="about.php">About</a></li>
      <li><a href="contact.php">Contact</a></li>
      <li><a href="admin_logout.php">Logout</a></li>
    </ul>
  </div>
</nav>

<style>
/* Reset styles */
 
html, body {
  margin: 0;
  padding: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f9f9f9;
  
}


.new-navbar {
  background: linear-gradient(90deg, #8e2de2, #4a00e0);
  padding: 15px 0;
  font-family: 'Segoe UI', sans-serif;
  box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.nav-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.nav-logo {
  font-size: 24px;
  color: #fff;
  font-weight: bold;
}

.nav-menu {
  list-style: none;
  display: flex;
  gap: 25px;
}

.nav-menu li a {
  color: #fff;
  text-decoration: none;
  font-size: 16px;
  padding: 8px 14px;
  border-radius: 4px;
  transition: background 0.3s ease;
}

.nav-menu li a:hover {
  background-color: rgba(255, 255, 255, 0.2);
}

/* Mobile */
.nav-toggle {
  font-size: 26px;
  color: #fff;
  display: none;
  cursor: pointer;
}

@media screen and (max-width: 768px) {
  .nav-toggle {
    display: block;
  }

  .nav-menu {
    display: none;
    flex-direction: column;
    width: 100%;
    background: #4a00e0;
    margin-top: 15px;
    border-radius: 8px;
    overflow: hidden;
  }

  .nav-menu li {
    border-top: 1px solid rgba(255,255,255,0.1);
  }

  .nav-menu li a {
    display: block;
    padding: 12px;
  }

  .nav-menu.active {
    display: flex;
  }
}
</style>

<script>
function toggleMenu() {
  document.getElementById("navMenu").classList.toggle("active");
}
</script>
