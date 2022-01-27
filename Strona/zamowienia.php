<?php
	session_start();
		$polaczenie=mysqli_connect("localhost","root","","sklep") or die("Błąd połączenia");
	if(isset($_POST['Wykonaj'])){
		$imie=$_POST['imie'];
		$nazwisko=$_POST['nazwisko'];	
		$telefon=$_POST['telefon'];	
		$email=$_POST['email'];	
		$miasto=$_POST['miasto'];	
		$nr_lokalu=$_POST['nr_lokalu'];	
		$ulica=$_POST['ulica'];
		$nr_mebla=$_POST['nr_mebla'];
		echo $miasto.' '.$nr_lokalu.' '.$ulica;
		
		$tekst_adres='SELECT adresy.adresy_id FROM adresy WHERE adresy.miasto='."$miasto".' AND adresy.nr_lokalu='.$nr_lokalu.' AND adresy.ulica='."$ulica".';';
        if($zapytanie=mysqli_query($polaczenie,$tekst_adres)==True){
			echo 'GIT';
		}else{
			echo "GGG";
		}
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									while($i<$x){
										$id_adresu=$wiersz[$i];
										$i++;
									}
									
								}
							
							
		}else{
			$dodaj_adres='INSERT INTO adresy VALUES (NULL,'.$miasto.','.$nr_lokalu.','.$ulica.');';
			if($zapytanie_dodaj_adres=mysqli_query($polaczenie,$dodaj_adres)==TRUE){
				echo "TAK";
			}else{
				echo "NIE";
			}
		}
		$tekst_adres='SELECT adresy.adresy_id FROM adresy WHERE adresy.miasto='.$miasto.' AND adresy.nr_lokalu='.$nr_lokalu.' AND adresy.ulica='.$ulica.';';
        $zapytanie_adres=mysqli_query($polaczenie,$tekst_adres);
		$x=mysqli_num_fields($zapytanie_adres);
		$kolumna_adres=array();
							
		while ($property_adres = @mysqli_fetch_field($zapytanie_adres)) {
			$kolumna[] = $property_adres->name;
		}
		if($zapytanie_adres->num_rows>0){
			while($wiersz_adres=mysqli_fetch_array($zapytanie_adres)){
				$i=0;
				while($i<$x){
					$id_adresu=$wiersz_adres[$i];
					$i++;
				}
			}
		}
		$tekst_klienta='SELECT klienci.klienci_id FROM klienci WHERE klienci.imie='.$imie.' AND klienci.nazwisko='.$nazwisko.' AND klienci.telefon='.$telefon.' AND klienci.email='.$email.' AND klienci.adresy_id='.$id_adresu.';';
        $zapytanie_klienta=mysqli_query($polaczenie,$tekst_klienta);
		$x=mysqli_num_fields($zapytanie_klienta);
		$kolumna_klienta=array();
							
		while ($property_klienta = @mysqli_fetch_field($zapytanie_klienta)) {
			$kolumna[] = $property_klienta->name;
		}
		if($zapytanie_klienta->num_rows>0){
			while($wiersz_klienta=mysqli_fetch_array($zapytanie_klienta)){
				$i=0;
				while($i<$x){
					$id_klienta=$wiersz_klienta[$i];
					$i++;
				}
			}
		}else{
			$dodaj_klienta='INSERT INTO klienci VALUES (NULL,'.$imie.','.$nazwisko.','.$telefon.','.$email.','.$id_adresu.');';
			if($zapytanie_dodaj_klienta=mysqli_query($polaczenie,$dodaj_klienta)==TRUE){
				echo "TAK";
			}else{
				echo "NIE";
			}
		}	
	}
?>
<html>
<head>
    <meta charset="utf-8">
    <title>Strona główna</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <header>
            <h1>Zamówienia</h1>
        </header>
        <div id="container">
            <div id="lewy">
                <a href="index.php"><div class="menu">
                    <p>Strona główna</p>
            </div></a>
                <a href="Zamowienia.php"><div class="menu">
                    <p>Zamówienia</p>
                </div></a>
                <a href="pracownik.php"><div class="menu">
                    <p>SQL</p>
                    </div></a>
            </div>
            <div id="prawy">
                <div class="dane">
				<!--
				  <form method="post">
					<label>Imie</label> <input type="text" name="imie" />
                    <label>Nazwisko</label> <input type="text" name="nazwisko" />
                    <label>NR telefonu</label> <input type="number" name="telefon" />
                    <label>email</label> <input type="text" name="email" />
                    <br>
                    <br>
                    <label>Miasto</label> <input type="text" name="miasto" />
                    <label>NR lokalu</label> <input type="text" name="nr_lokalu" />
                    <label>Ulica</label> <input type="text" name="ulica" />
                    <br>
                    <br>
                    <select name="select">
                    <option value="Regal">Regal</option>
                    <option value="Lozko">Łozko</option>
                    <option value="Lustro">Lustro</option>
                    <option value="Naroznik">Naroznik</option>
                    <option value="lawa">Ława</option>
                    <option value="Stolik">Stolik</option>
					<option value="Pufa">Pufa</option>
                    <option value="Regal">Krzesla komplet</option>
                    <option value="Krzesla komplet">Komoda</option>
                    <option value="Wersalka">Wersalka</option>
                    </select>
					<label>ID mebla</label> <input type="number" name="nr_mebla" />
					<br>
					<br>
                    <input type="submit" name="wykonaj" Value="Wykonaj"/>
					<br>
				</form>
				--->
				<p> Na dole znajdą państwo listę mebli dostępnych w naszym sklepie</p>
				<br>
				<p>Zamówienia składane drogą telefoniczną:<p>
				<?php
					$tekst='select adresy.miasto,adresy.ulica,sklepy.telefon FROM adresy,sklepy WHERE sklepy.adresy_id=adresy.adresy_id;';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo '<pre>';
									while($i<$x){
										echo " ".$kolumna[$i].":".$wiersz[$i].'<tab>';
										$i++;
									}
									echo '</pre>';
									
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
            </div>
            <div class="czysc"></div>
        </div>
            <div class="zamow">
                <div class="zdjecie">
                    <img src="img/komoda.png" alt="Komoda">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="Komoda";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
            <div class="zamow">
                <div class="zdjecie">
                    <img src="img/krzesla.jpg" alt="Krzesła">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="Krzesla komplet";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
            <div class="zamow">
                <div class="zdjecie">
                    <img src="img/lawa.jpg" alt="ława">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="lawa";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
            <div class="zamow">
                <div class="zdjecie">
                    <img src="img/Lozko.jpeg" alt="łóżko">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="Lozko";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/lustro.jpeg" alt="łóżko">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="lustro";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/naroznik.jpg" alt="narożnik">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="lustro";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/pufa.jpeg" alt="pufa">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="pufa";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/regal.jpg" alt="regal">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="regal";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/stolik.jpg" alt="stolik">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="stolik";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
			<div class="zamow">
                <div class="zdjecie">
                    <img src="img/wersalka.jpg" alt="wersalka">
                </div>
                <div class="tekst">
					<?php
					$tekst='SELECT meble.meble_id,meble.rodzaj,wymiary.szerokosc,wymiary.wysokosc,wymiary.glebokosc,materialy.rodzaj,meble.cena,meble.ilosc FROM meble,wymiary,materialy WHERE meble.wymiary_id=wymiary.wymiary_id AND meble.materialy_id=materialy.materialy_id AND meble.rodzaj="wersalka";';
                    $zapytanie=mysqli_query($polaczenie,$tekst);
							$x=mysqli_num_fields($zapytanie);
							$kolumna=array();
							
					while ($property = @mysqli_fetch_field($zapytanie)) {
					$kolumna[] = $property->name;
						}
							if($zapytanie->num_rows>0){
								while($wiersz=mysqli_fetch_array($zapytanie)){
									$i=0;
									echo "<p>"."----------------------------------------------------------"."</p>";
									while($i<$x){
										echo "<table><tr><td>".$kolumna[$i]." : ".$wiersz[$i]."</tr></td></table>";
										$i++;
									}
									echo "<p>"."----------------------------------------------------------"."</p>";
									echo "<br>";
								}
							
							}else{
								$_SESSION['blad']="Brak danych";
							}
					?>
                </div>
                <div class="czysc"></div>
            </div>
        <footer>
            <p>Wszelkie prawa zastrzezone 2022</p>
        </footer>
    </main>
</body>
</html>