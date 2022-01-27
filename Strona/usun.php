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
    <title>Usuń</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <header>
            <h1>Usuń</h1>
        </header>
        <div id="container">
            <div id="lewy">
                <a href="dodaj.php"><div class="menu">
                    <p>Dodaj</p>
            </div></a>
                <a href="pracownik.php"><div class="menu">
                    <p>Wróć</p>
                </div></a>
                <a href="wyswietl.php"><div class="menu">
                    <p>Wyświetl</p>
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
                <div class="dane">
                    <?php
					if(isset($_POST['wykonaj'])){
						if(strlen($tekst)>1){
							if($zapytanie=mysqli_query($polaczenie,$tekst)=== TRUE){
								echo "Record deleted successfully";
							}else{
								echo "Error deleting record: ";
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
            </div>
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