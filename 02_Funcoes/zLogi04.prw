//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi04
Demonstrando tipos de fun��es em AdvPL
@author Atilio
@since 15/02/2020
@version 1.0
@type function
@obs O tipo User Function pode ser chamado em qualquer lugar do Protheus com
	o prefixo U_ (letra U com underscore/underline), por exemplo, u_zLogi04()
	
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

User Function zLogi04()
	Local aArea := GetArea()
	
	//Mostrando a mensagem de que est� na User Function
	MsgInfo("Estou na User Function zLogi04!", "Aten��o")
	
	RestArea(aArea)
Return