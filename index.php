<!DOCTYPE html>
<html lang="en">
<?php include "head.php"; ?>
<body>

<?php include "top_nav.php"; ?>

<div class="homepage-container">

  <section class="hero-section">
    <div class="hero-text">
      <h1>Online Blood Bank Management System</h1>
      <p>Donate blood. Save lives. Make a difference in your community today.</p>
    </div>
  </section>

  <section class="features-section">
    <div class="feature-card">
      <h2>🩸 Donor Registration</h2>
      <p>Have you ever seen someone struggle to find blood during an emergency? This platform connects donors and recipients when it matters most.</p>
      <a href="Donor_reg.php">View More</a>
    </div>
    
    <div class="feature-card">
      <h2>🚑 Need Blood</h2>
      <p>Someone needs blood every 2 seconds. Your donation can help accident victims, premature babies, and others survive critical conditions.</p>
      <a href="request_blood.php">View More</a>
    </div>
  </section>

</div>

<style>
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f9f9f9;
}

/* Hero Section */
.hero-section {
  background: linear-gradient(120deg, #8e2de2, #4a00e0);
  color: white;
  padding: 80px 20px;
  text-align: center;
}

.hero-text h1 {
  font-size: 36px;
  margin-bottom: 15px;
}

.hero-text p {
  font-size: 18px;
  max-width: 700px;
  margin: 0 auto;
  line-height: 1.6;
}

/* Features Section */
.features-section {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 30px;
  padding: 50px 20px;
}

.feature-card {
  background: white;
  border-radius: 12px;
  box-shadow: 0 8px 16px rgba(0,0,0,0.08);
  max-width: 350px;
  padding: 25px;
  transition: transform 0.3s ease;
  text-align: center;
}

.feature-card:hover {
  transform: translateY(-5px);
}

.feature-card h2 {
  font-size: 22px;
  color:rgb(225, 13, 76);
  margin-bottom: 15px;
}

.feature-card p {
  font-size: 15px;
  color: #333;
  margin-bottom: 20px;
}

.feature-card a {
  text-decoration: none;
  padding: 10px 18px;
  background:rgb(224, 0, 63);
  color: white;
  border-radius: 6px;
  transition: background 0.3s ease;
}

.feature-card a:hover {
  background: #8e2de2;
}

 
@media screen and (max-width: 768px) {
  .features-section {
    flex-direction: column;
    align-items: center;
  }
}
</style>

</body>
</html>
