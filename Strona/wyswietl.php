<?php
	session_start();
	
	if(isset($_POST['tekst'])){
		$polaczenie=mysqli_connect("localhost","root","","sklep") or die("Błąd połączenia");
		$tekst=$_POST['tekst'];	
	}
?>

<html>
<head>
    <meta charset="utf-8">
    <title>Wyświetl</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <header>
            <h1>Wyświetl</h1>
        </header>
        <div id="container">
            <div id="lewy">
                <a href="dodaj.php"><div class="menu">
                    <p>Dodaj</p>
            </div></a>
                <a href="usun.php"><div class="menu">
                    <p>Usuń</p>
                </div></a>
                <a href="pracownik.php"><div class="menu">
                    <p>Wróć</p>
                    </div></a>
                <a href="zmien.php"><div class="menu">
                    <p>Zmień</p>
                    </div></a>
            </div>
            <div id="prawy">
                <div class="dane">
				<form method="post">
					<textarea class="tekst_wprowadz" name="tekst"> </textarea>
					<br>
					<br>
                    <input type="submit" name="wykonaj" Value="Wykonaj"/>
					<br>
				</form>
                </div>
            </div>
			</div>
			<div id="wyswietl">
                   <?php
					if(isset($_POST['wykonaj'])){
						if(strlen($tekst)>1){

							$zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
						$z=1;
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo '<h1>'.'Element: '.$z.'</h1>';
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									$z++;
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
						}else{
							$_SESSION['blad']="PUSTE POLE";
						}
					}
					 if(isset($_SESSION['blad'])){
						echo $_SESSION['blad'];
						unset($_SESSION['blad']);
					 }
					
					?> 
            </div>
			
        
        <footer>
            <p>Wszelkie prawa zastrzezone 2022</p>
        </footer>
    </main>
</body>
</html>
<?php
	if(isset($_POST['wykonaj'])){
	$polaczenie->close();
	}
?>