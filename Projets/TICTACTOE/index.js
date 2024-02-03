function tictactoe(jeu) {
  // Vérifier les lignes, colonnes et diagonales
  for (let i = 0; i < 3; i++) {
    // Vérifier les lignes
    if (
      jeu[i][0] === jeu[i][1] &&
      jeu[i][1] === jeu[i][2] &&
      jeu[i][0] !== " "
    ) {
      return jeu[i][0] + " a gagné!";
    }
    // Vérifier les colonnes
    if (
      jeu[0][i] === jeu[1][i] &&
      jeu[1][i] === jeu[2][i] &&
      jeu[0][i] !== " "
    ) {
      return jeu[0][i] + " a gagné!";
    }
  }

  // Vérifier les diagonales
  if (
    (jeu[0][0] === jeu[1][1] && jeu[1][1] === jeu[2][2] && jeu[0][0] !== " ") ||
    (jeu[0][2] === jeu[1][1] && jeu[1][1] === jeu[2][0] && jeu[0][2] !== " ")
  ) {
    return jeu[1][1] + " a gagné!";
  }

  // Vérifier s'il y a un match nul
  if (jeu.flat().every((cell) => cell !== " ")) {
    return "Match nul!";
  }

  // Aucun résultat, le jeu continue
  return "Le jeu continue...";
}

// Exemple d'utilisation
const jeu1 = [
  ["X", "O", "X"],
  ["O", "X", "X"],
  ["X", "O", "X"],
];

console.log(tictactoe(jeu1));
