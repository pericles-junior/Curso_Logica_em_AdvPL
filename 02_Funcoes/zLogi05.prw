//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi05
Demonstrando tipos de fun��es em AdvPL
@author Atilio
@since 15/02/2020
@version 1.0
@type function
@obs O tipo User Function pode ser chamado em qualquer lugar do Protheus com
	o prefixo U_ (letra U com underscore/underline), por exemplo, u_zLogi05()
	
	As nomenclaturas utilizadas, geralmente s�o:
	AABBBXNN, onde:
	AA - Sigla da empresa
	BBB - M�dulo da Fun��o
	X - Tipo (Atualiza��o, Consulta, Relat�rio, Miscelanea, Job, etc)
	NN - Sequ�ncia, por exemplo:
	ASFATR87 -> Atilio Sistemas, FATuramento, Relat�rio, sequ�ncia 87
	
	Ou se for um fonte gen�rico, de uma lib por exemplo, iniciamos a fun��o de usu�rio com a letra "z"
	
	J� as fun��es est�ticas n�o tem limita��o de tamanho de caracteres (at� 10)
	Para seguir um padr�o, tentamos come�ar com elas, utilizando a letra "f"
/*/

User Function zLogi05()
	Local aArea := GetArea()
	
	//Mostrando a mensagem de que est� na User Function
	MsgInfo("Estou na User Function zLogi05!", "Aten��o")
	
	//Chamando a fun��o A
	fFuncA()
	
	//Chamando a fun��o B
	fFuncB()
	
	//Chamando uma fun��o de Teste
	fFuncaoTst()
	
	RestArea(aArea)
Return

/*/{Protheus.doc} fFuncA
Fun��o Auxiliar A
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncA()
	MsgInfo("Estou na Static Function fFuncA!", "Aten��o")
Return

/*/{Protheus.doc} fFuncB
Fun��o Auxiliar B
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncB()
	MsgInfo("Estou na Static Function fFuncB!", "Aten��o")
Return

/*/{Protheus.doc} fFuncaoTst
Fun��o Auxiliar de Teste
@author Atilio
@since 19/12/2019
@version 1.0
@type function
/*/

Static Function fFuncaoTst()
	MsgInfo("Estou na Static Function fFuncaoTst!", "Aten��o")
Return