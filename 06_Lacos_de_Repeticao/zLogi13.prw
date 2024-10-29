//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi13
Demonstrando la�os de repeti��o - FOR
@author Atilio
@since 10/03/2020
@version 1.0
@type function
@obs Usa-se Loop ou Exit para pular a condi��o do la�o ou encerrar
/*/

User Function zLogi13()
	Local aArea    := GetArea()
	Local nAtual   := 0
	Local aNomes   := {}
	Local cPares   := ""
	Local cMsg     := ""
	
	//Percorrendo de 1 a 10
	For nAtual := 1 To 10
		
		//Se o resto da divis�o por 2 der 0, ent�o � n�mero par
		If nAtual % 2 == 0
			cPares += cValToChar(nAtual) + ", "
		EndIf
		
	Next
	
	//Adicionando nomes no array
	aAdd(aNomes, "Daniel")
	aAdd(aNomes, "Atilio")
	aAdd(aNomes, "Terminal de Informa��o")
	
	//Percorrendo o array de nomes
	For nAtual := Len(aNomes) To 1 Step -1
		cMsg += "[" + cValToChar(nAtual) + "] - " + aNomes[nAtual] + CRLF
	Next
	
	MsgInfo("Pares: " + cPares + CRLF + "Nomes: " + cMsg, "Aten��o")
	
	RestArea(aArea)
Return