<?php
// adatbázis adatok
$databaseHost = 'localhost';
$databaseName = 'kutya2';
$databaseUsername = 'root';
$databasePassword = '';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 

	
				$handler = fopen("c:\\TEMP\\kutyak.txt", "r"); // file beolvasása
				while($data=fgetcsv($handler)) // olvasom a végéig
                                {
					//a struktúrának megfeleően beviszem az adatokat
                                        mysqli_query($mysqli, "INSERT INTO `kutya` VALUES('','$data[0]', '$data[1]', '$data[2]', '$data[3]', '$data[4]')") or die(mysqli_error());
				}
				echo"<script>alert('Bevitel sikeres!')</script>";

//adatbázis minta
//                                CREATE TABLE `kutya` (
//                                        `id` int(11) NOT NULL,
//                                        `nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
//                                        `eletkor` int(11) NOT NULL,
//                                        `fajta` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
//                                        `beker_datum` date NOT NULL,
//                                        `azon` varchar(8) COLLATE utf8_hungarian_ci NOT NULL
//                                      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
                                      
                                      


?>