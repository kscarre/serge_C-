--mettre a jour quantite stock
update produit set quantitestock = quantitestock + &quantite
where numprod in (select numprod from produitfourni where upper (numprod)= upper ('&numprod') and quantite ='&quantite'
and dateachat = to_date('&date','dd-mm-yyyy') and upper (numfour)= upper('&numfour'));
commit;
