programa
{
	
	funcao inicio()
	{
		inteiro matriz[3][3],vez=3,linha,coluna,vence=0,velha=0,jogadas =0
		logico parar=verdadeiro
		preenche_com_zero(matriz)
		
		escreva("minha matriz \n")

exbe(matriz)

enquanto(parar){
	


escreva("diga a linha \n ")
leia(linha)
escreva("diga a coluna \n ")
leia(coluna)
jogada(matriz, vez, linha, coluna)
exbe(matriz)
verifica_vetoria_nas_linhas(matriz,vence,velha)
verifica_vitoria_colunas(matriz, vence,velha)
verfica_vitoria_D_principal(matriz,vence,velha)
verfica_vitoria_D_segundaria(matriz, vence,velha)
//empate(velha,vence)
vez++

escreva("\n\n")
jogadas++

se(jogadas==9){
	escreva("empatou VELHA")
}

se
(vence==3){
	parar=falso
}
		}


	}
	funcao exbe(inteiro matriz[][]){
		inteiro i,j
		para(i=0; i<3; i++){
		para(j=0; j<3; j++){
			escreva(matriz[i][j]+" ")
		}	
		escreva("\n")
		}
	}

	funcao preenche_com_zero(inteiro matriz[][]){
		inteiro i,j
		para(i=0; i<3; i++){
		para(j=0; j<3; j++){
			matriz[i][j]=0
			
		}	
		}
	}
	funcao jogada(inteiro &matriz[][],inteiro &vez, inteiro linha,inteiro coluna ){
		se (vez%2==0){
			matriz[linha-1][coluna-1]=1
			
		}senao{
			matriz[linha-1][coluna-1]=2
		}
		
	}
	funcao verifica_vetoria_nas_linhas(inteiro matriz[][], inteiro &vence,inteiro &velha){
	se (matriz[0][0]==1 e matriz[0][1]==1 e matriz[0][2]==1)	{
		vence=3
		escreva("jogador 1 venceu na primeira linha")
	}
	senao	se (matriz[1][0]==1 e matriz[1][1]==1 e matriz[1][2]==1)	{
		vence=3
		escreva("jogador 1 venceu na segunda  linha")
	}

		senao	se (matriz[2][0]==1 e matriz[2][1]==1 e matriz[2][2]==1)	{
		vence=3
		escreva("jogador 1 venceu na terceira   linha")
	}
	
	//verificando segundo jogador

senao 	se (matriz[0][0]==2 e matriz[0][1]==2 e matriz[0][2]==2)	{
		vence=3
		escreva("jogador 2 venceu na primeira linha")
	}
	senao	se (matriz[1][0]==2 e matriz[1][1]==2 e matriz[1][2]==2)	{
		vence=3
		escreva("jogador 2 venceu na segunda  linha")
	}

		senao	se (matriz[2][0]==2 e matriz[2][1]==2 e matriz[2][2]==2)	{
		vence=3
		escreva("jogador 3 venceu na terceira   linha")
	} 
	
	
	
	}

	funcao verifica_vitoria_colunas(inteiro matriz[][], inteiro &vence,inteiro &velha){
		se(matriz[0][0]==1 e matriz[1][0]==1 e matriz[2][0]==1){
			escreva("jogador 1 venceu de cima para baixo\n")
			vence=3
			
		} senao se (matriz[0][1]==1 e matriz[1][1]==1 e matriz[2][1]==1){
			
			escreva("jogador 1 venceu de cima para baixo na segunda coluna\n")
			vence=3
		}senao se(matriz[0][2]==1 e matriz[1][2]==1 e matriz[2][2]==1){
			escreva("jogador 1 venceu de cima para baixo na terceira coluna\n")
			vence=3
		}
		//segundo jogador
		senao se(matriz[0][0]==2 e matriz[1][0]==2 e matriz[2][0]==2){
			escreva("jogador 2 venceu de cima para baixo\n")
			vence=3
			
		} senao se (matriz[0][1]==2 e matriz[1][1]==2 e matriz[2][1]==2){
			
			escreva("jogador 2 venceu de cima para baixo na segunda coluna\n")
			vence=3
		}senao se(matriz[0][2]==2 e matriz[1][2]==2 e matriz[2][2]==2){
			escreva("jogador 2 venceu de cima para baixo na terceira coluna\n")
			vence=3
		}
	
}
funcao verfica_vitoria_D_principal(inteiro matriz[][],inteiro &vence,inteiro &velha){
	
	se(matriz[0][0]==1 e matriz[1][1]==1 e matriz[2][2]==1){
		escreva("jogador 1 venceu na diagonal principal")
		vence=3
	}

	senao se(matriz[0][0]==2 e matriz[1][1]==2 e matriz[2][2]==2){
		escreva("jogador 2 venceu na diagonal principal")
		vence=3
	}
	
	
}

funcao verfica_vitoria_D_segundaria(inteiro matriz[][], inteiro &vence,inteiro &velha){
	se(matriz[0][2]==1 e matriz[1][1]==1 e matriz[2][0]==1){
		escreva("jogador 1 venceu na diagonal segundaria")
		vence=3
	}
	senao 
			se(matriz[0][2]==2 e matriz[1][1]==2 e matriz[2][0]==2){
		escreva("jogador 2 venceu na diagonal segundaria")
		vence=3
	
	}
	

}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @DOBRAMENTO-CODIGO = [45];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */