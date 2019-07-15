<html>
<body>
<center>
<h3> ADMIN </h3>
<form method="post">
	<table>
		<tr><td>Login</td><td><input type = "texte" name = "loginadmin" value = ""></td></tr>
		<tr><td>Password</td><td><input type = "password" name = "passwordadmin" value = ""></td></tr>
		<tr><td colspan ="2" align = "right"><input type = "submit" name = "adminok" value = "Entre"> </td></tr>
	</table>
</form>



<?php
//r1 recupration des donne en POST\

$loginadmin=trim($_POST["loginadmin"]);
$passwordadmin=trim($_POST["passwordadmin"]);


echo $loginadmin." ".$passwordadmin;



//2) connexion avec oracle
$conn=oci_connect('userclinique','123','127.0.0.1/XE') or die("Echec de connexion avec oracle");

//3) requete sql
$selection=oci_parse($conn,"select * from administration where login='$loginadmin' and password='$passwordadmin'");
oci_execute($selection);

//4)analyse et affichage des resultat de la requete 
$nbre=oci_fetch_all($selection,$resultat);
//echo $nbre;

if ($nbre >0)
{
	// rediriger vers la page de l ADMIN 
	echo "<script>window.location.href='http://127.0.0.1/clinique/indexadmin.php';</script>";
}
else
{
	echo "<font color = 'red'> Login et/ou password incorrect!</font>";
}

//5 fermeture de la connexion
oci_close($conn);
//$insertion=oci_parse($conn,"insert into administration values('sergio','123')");
//oci_execute($insertion);
//oci_commit($conn);

?>


</center>
</body>
</html>

