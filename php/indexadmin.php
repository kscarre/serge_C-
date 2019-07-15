<style>
	li{
		display:inline;
		margin-right:75px;
	}
</style>
<!-- page de l admin-->
<center>
<!-- session entete-->
<div style="height:15%">
	<ul>
		<li> <a href="indexadmin.php?lien=accueil"> Accueil</a></li>
		<li> <a href="indexadmin.php?lien=patient"> Patient</a></li>
		<li> <a href="indexadmin.php?lien=medecin"> Medecin</a></li>
		<li> <a href="indexadmin.php?lien=rendezvous"> Rendez vous</a></li>
		<li> <a href="index.php"> Deconnxion</a></li>
	</ul>
</div>
<!-- session detail-->

<div style= "height:85%">
<?php 
	//recuperation du lien transmis par GET
	$lien=$_GET["lien"];
	//echo $lien;
	switch($lien)
	{
		case "accueil";
			echo "bienvenue sur la section admin";
		break;
		case "patient";
			include("patient.php");
		break;
		case "medecin";
			include("medecin.php");
		break;
		case "rendezvous";
			include("rendezvous.php");
		break;
		
		
	}
?>
</div>
</center>