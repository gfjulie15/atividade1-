programa
{
	inclua biblioteca Tipos-->ti 
     inclua biblioteca Util-->u
     inclua biblioteca Texto-->t
	
	cadeia alfabeto[26] = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	cadeia frase
	inteiro chave=0
	funcao inicio()
	{
	escreva("qual frase voce deseja descriptografar?")
	leia(frase)

	escreva("qual chave voce quer utilizar?")
	leia(chave)
	
	inteiro numeroLetras= t.numero_caracteres(frase)
	escreva("a frase tem  ", numeroLetras, "  letras. \n") 

	para (inteiro i=0; i<numeroLetras; i++){
		caracter letra= t.obter_caracter(frase,i)
		cadeia letraConvertida = ti.caracter_para_cadeia(letra)

		u.aguarde(200)
           para (inteiro j=0; j<26; j++){
           	se(letraConvertida== alfabeto[j]){
            
           
           inteiro posicaoCriptografada= j-chave 
           posicaoCriptografada=posicaoCriptografada %26
           escreva(alfabeto[posicaoCriptografada]) 

            escreva("  essa letra é o que vale a letra   ", letraConvertida     ,    " que esta na posiçao  "  ,  j ,"\n")
           pare

           //Professor o meu codigo so funciona com chave menor que 5, nao achei 
           //onde esta o problema 
           
           	}
           }
	}

	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */