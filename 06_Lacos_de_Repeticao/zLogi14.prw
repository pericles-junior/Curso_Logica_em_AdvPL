//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi14
Demonstrando la�os de repeti��o - WHILE
@author Atilio
@since 10/03/2020
@version 1.0
@type function
@obs Usa-se Loop ou Exit para pular a condi��o do la�o ou encerrar
/*/

User Function zLogi14()
	Local aArea   := GetArea()
	Local aAreaSA2 := SA2->(GetArea())
	Local cMsg    := ""
	Local nAtual  := 0
	
	//Enquanto for verdadeiro
	While .T.
		
		//Se a pergunta for confirmada, volta o la�o
		If MsgYesNo("Deseja continuar o la�o?", "Aten��o")
			Loop
		Else
			Exit
		EndIf
		
	EndDo
	
	//Abrindo a tabela de fornecedores e posicionando no topo
	DbSelectArea('SA2')
	SA2->(DbSetOrder(1))
	SA2->(DbGoTop())
	
	//Enquanto houver dados nos fornecedores e for menos que 100 registros
	While ! SA2->(EoF())
		nAtual++
		cMsg += "[" + cValToChar(nAtual) + "] " + Alltrim(SA2->A2_NOME) + ";" + CRLF
		
		SA2->(DbSkip())
	EndDo

	/*
	//Exemplo de utilizacao de alias

	//Executo query QRY_SF1

	While ! QRY_SF1->(EoF())

		//Executo query QRY_SD1
		
		While ! QRY_SD1->(EoF())
		
			QRY_SD1->(DbSkip())
		EndDo
		QRY_SD1->(DbCloseArea())

		QRY_SF1->(DbSkip())
	EndDo
	*/
	
	//Mostrando os fornecedores
	Aviso("Aten��o", cMsg, {"OK"}, 2)
	
	RestArea(aAreaSA2)
	RestArea(aArea)
Return