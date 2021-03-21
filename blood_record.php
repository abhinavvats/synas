<?php include './header.php';?>
<?php
session_start();
if(!isset($_SESSION['loggedin'])|| $_SESSION['loggedin']!=true){
  header("location:index.php");
  exit;
}
include './db.php' ;
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
  </head>
  <body>
    <table class="table">
    <tr>
      <th scope="col">S.no</th>
      <th scope="col">Name</th>
      <th scope="col">Date</th>
     
      <?php

$sql = "SELECT * FROM `users`";
$result = mysqli_query($conn, $sql);


while ($row = mysqli_fetch_assoc($result)) {
  $sno=$row['uid'];
  $name=$row['name'];
  $date = $row["dt"];



    echo '
<tr>
<td>'.$sno.'</td>
<td>'.$name.'</td>
<td>'.$date.'</td>

</tr>';
}
?>
</table>
    
</body>
</html>