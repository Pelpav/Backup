const nombre1 = 10;
const nombre2 = 20;

let imp = 0,
  pair = 0;

if (nombre1 >= nombre2 || isNaN(nombre1) || isNaN(nombre2)) {
  console.log(
    "Veuillez saisir des nombres valides avec le Départ inférieur au Fin."
  );
} else {
  calcul(nombre1, nombre2);
}

function calcul(nombre1, nombre2) {
  for (let i = nombre1; i < nombre2; i++) {
    if (i % 2 === 0) {
      pair++;
    } else {
      imp++;
    }
  }
  console.log(imp + " Nombres Impairs et " + pair + " Nombres Pairs");
}
