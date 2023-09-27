<?php
error_reporting(0);
include('connect.php');

$sql = "SELECT * FROM place";
$all_place = $conn->query($sql);
if (!isset($_GET['page'])) {
  header('location: continent.php');
}
if (!isset($_GET['countryID'])) {
  header('location: continent.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Continent</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" </head>

<body>
  <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="../AroundEarth/continent.php" class="nav-link px-2 link-secondary">Home</a></li>
      </ul>

    </header>
  </div>

  <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
    <li><a class="dropdown-item" href="#">New project...</a></li>
    <li><a class="dropdown-item" href="#">Settings</a></li>
    <li><a class="dropdown-item" href="#">Profile</a></li>
    <li>
      <hr class="dropdown-divider">
    </li>
    <li><a class="dropdown-item" href="#">Sign out</a></li>
  </ul>
  </div>
  </div>
  <div class="album py-5 bg-body-tertiary">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <?php
        $place_sql = "SELECT place.place_id, place.country_id, place.place_name, place.place_img, country.country_name AS couname FROM place JOIN country ON place.country_id=country.country_id WHERE place.country_id=" . $_GET['countryID'];
        if ($place_query = mysqli_query($conn, $place_sql)) {
          $row = mysqli_fetch_assoc($place_query);
        }
        if (mysqli_num_rows($place_query) == 0) {
          echo "YOu Are WeirD oNE HUH?";
        } else {
          do {
        ?>
            <div class="col">
              <div class="card shadow-sm">
                <img class="w-100 h-75" src="<?php echo ($row["place_img"]); ?>"><img>
                <div class="card-body">
                  <p class="card-text"><?php echo $row["place_name"]; ?></p>
                </div>
              </div>
            </div>
          <?php
          } while ($row = mysqli_fetch_assoc($place_query))
          ?>
        <?php
        }
        ?>
      </div>
    </div>
  </div>
  </div>
  </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>