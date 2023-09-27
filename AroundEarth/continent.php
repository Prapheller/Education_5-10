<?php

include('connect.php');

$sql = "SELECT * FROM Continent";
$all_continent = $conn->query($sql);
$row = mysqli_fetch_assoc($all_continent)
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
        do {
        ?>
          <div class="col">
            <div class="card shadow-sm">
              <img class="w-100 h-75" src="<?php echo ($row["continent_img"]); ?>"><img>
              <div class="card-body">
                <p class="card-text"><?php echo $row["continent_name"]; ?></p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="btn-group">
                    <a href="country.php?page=page&continentID=<?php echo $row["continent_id"]; ?>">
                      <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <?php
        } while ($row = mysqli_fetch_assoc($all_continent))
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