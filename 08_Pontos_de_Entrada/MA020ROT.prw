//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} MA020ROT
Ponto de Entrada adicionando outras a��es no cadastro de Fornecedor
@author Atilio
@since 10/03/2020
@version 1.0
@return aRotNov, Array com novas op��es no menu
@type function
@obs Existem 3 formas de pegar dados de campos ALIAS->CAMPO, M->CAMPO e FWFldGet("CAMPO")
/*/

User Function MA020ROT()
	Local aArea := GetArea()
	Local aRotNov := {}
	
	//Adicionando a��es relacionadas no cadastro de fornecedor
	aAdd( aRotNov, { "* Base Conhecimento", "MsDocument('SA2', SA2->(RecNo()), 4)", 0, 4 } )
	aAdd( aRotNov, { "* Teste", "Alert('Tst')", 0, 2 } )
	
	RestArea(aArea)
Return aRotNov