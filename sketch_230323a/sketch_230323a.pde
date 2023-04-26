void setup() {
  size(400, 400); // Define o tamanho da janela
  background(255); // Define o fundo como branco
  
  // Desenha o prédio
  fill(128, 128, 128); // Define a cor do prédio como cinza
  rect(100, 100, 200, 200); // Desenha um retângulo para o prédio
  
  // Desenha as janelas
  fill(255); // Define a cor das janelas como branca
  for (int i = 0; i < 10; i++) {
    if (i < 3) { // Fecha as três primeiras janelas
      fill(105, 105, 105); // Define a cor das janelas fechadas como cinza escuro
    } else {
      fill(255); // Define a cor das janelas abertas como branca
    }
    rect(120 + i * 20, 120, 10, 20); // Desenha cada janela
  }
  
  // Desenha a porta
  fill(105, 105, 105); // Define a cor da porta como cinza mais escuro
  rect(170, 220, 60, 80); // Desenha a porta em si
  fill(192, 192, 192); // Define a cor das maçanetas como cinza claro
  ellipse(190, 265, 10, 10); // Desenha a primeira maçaneta
  ellipse(220, 265, 10, 10); // Desenha a segunda maçaneta
  
  // Desenha a árvore
  fill(34, 139, 34); // Define a cor da árvore como verde
  rect(40, 250, 50, 100); // Desenha o tronco da árvore
  fill(50, 205, 50); // Define a cor das folhas como verde claro
  ellipse(65, 200, 80, 80); // Desenha a copa da árvore
  
  save("predio.png"); // Salva a imagem como um arquivo PNG
}
