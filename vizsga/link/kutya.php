
<?php
/**
 * mysqli_connect - kapcsolódás az adatbázishoz
 */

$databaseHost = 'localhost';
$databaseName = 'kutya2';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 
?>

<!DOCTYPE html>
<html lang="hu">
<head>
	<title>Kutya Örökbefogadás</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content=" Czeller Norbert, Gyöngyösi Kevin, Szabó Cintia Leila ">
	<meta name="keyword" content=" állatmenhely, alapítvány, örökbefogadás">
	<link rel="stylesheet" href="../css/newstyle.css">
    <!-- bootstrap gyorsformázás -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div>
		<img src="../img/paw_s2.png" alt="2 Mancs" style="float:left; height:150px"> <img src="../img/paw_s1.png" alt="2 Mancs" style="float:right; height:150px">
		<h1 style="height:150px; text-align:center">Négy Mancs Állatvédő Egyesület</h1>
	</div>
	<div class="header">
		<p> Az alábbi felsorolásban láthatóak az éppen menhelyen lévő örökbefogadható kutyák </p>
	</div>
    <div>            
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Kutya neve</th>
                    <th>Életkora</th>
                    <th>Fajtája</th>
                    <th>Bekerülés dátuma</th>
                    <th>Azonosító</th>
                </tr>
                </thead>
                    <tbody>
                        <tr>
                        <?php
                            $magyar= mysqli_query($mysqli,"SET NAMES 'UTF8'");
                            $magyar_ketto = mysqli_query($mysqli,"SET CHARACTER SET UTF8");
                            $result = mysqli_query($mysqli, "SELECT * FROM kutya ");
                            // $kutyak_adatai tömbben kapom vissza a kiolvasott adatokat, a tömb egyes elemeire mezőnévvel hivatkozok ----
                            while( $kutyak_adatai = mysqli_fetch_array( $result )) {         
                                echo "<tr>";
                                echo "<td>".$kutyak_adatai['nev']."</td>";
                                echo "<td>".$kutyak_adatai['eletkor']."</td>";
                                echo "<td>".$kutyak_adatai['fajta']."</td>";
                                echo "<td>".$kutyak_adatai['beker_datum']."</td>";
                                echo "<td>".$kutyak_adatai['azon']."</td>";
                                echo "</tr>";
                                //echo "<td><a href='edit.php?id=$user_data[id]'>Módosít</a> | <a href='delete.php?id=$user_data[id]'>Törlés</a></td></tr>";        
                            }
                        ?>
                        </tr>
                </tbody>
        </table>
    </div>
	<div class="footer">
		<a href="../alapitvany.html"> Vissza a főoldalra </a>
	</div>
</body>
</html>