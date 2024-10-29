/* 1 . Bibliotecas e Constantes */

//Bibliotecas
#Include "Totvs.ch"

/* 2 . Documenta��o da Fun��o / Identifica��o */

/*/{Protheus.doc} zLogi02
Demonstrando a estrutura de um program em AdvPL
@author Atilio
@since 15/02/2020
@version 1.0
@type function
@obs A linguagem � estruturada, ou seja, um comando ser� executado por vez
	Al�m disso, ela tem limita��es no nome de fun��es e vari�veis
@see https://tdn.totvs.com/display/tec/ProtheusDOC
/*/

/* 3 . Abertura de um programa */

User Function zLogi02()
	Local aArea    := GetArea()
	Local dDataAtu := Date()
	Local cHoraAtu := Time()
	Local cNome    := "Curso de Logica em AdvPL"
	
	/* 4 . Corpo do programa */
	MsgInfo("Estamos no [" + cNome + "], hoje � " + dToC(dDataAtu) + ", �s " + cHoraAtu, "Aten��o")
	MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Aten��o")
	MsgInfo("M�s passado seria " + dToC(MonthSub(dDataAtu, 1)), "Aten��o")
	
	/* 5 . Encerramento do programa */
	RestArea(aArea)
Return