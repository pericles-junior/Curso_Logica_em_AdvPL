//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi18
Criando registro com ExecAuto MVC
@author Atilio
@since 10/03/2020
@version 1.0
@type function
/*/

User Function zLogi18()
	Local aArea     := GetArea()
	Local lDeuCerto := .F.
	Local oModel
	Local oSA2Mod
	Local aErro     := {}

	//Pegando o modelo de dados, setando a opera��o de inclus�o
	oModel := FWLoadModel("MATA020")
	oModel:SetOperation(3)
	oModel:Activate()

	//Pegando o model dos campos da SA2
	oSA2Mod:= oModel:getModel("SA2MASTER")
	oSA2Mod:setValue("A2_COD",       "000002"        ) // Codigo 
	oSA2Mod:setValue("A2_LOJA",      "01"       ) // Loja
	oSA2Mod:setValue("A2_NOME",      "FORNECEDOR MVC"       ) // Nome             
	oSA2Mod:setValue("A2_NREDUZ",    "MVC"   ) // Nome reduz. 
	oSA2Mod:setValue("A2_END",       "RUA TESTE"   ) // Endereco
	oSA2Mod:setValue("A2_BAIRRO",    "TESTE"     ) // Bairro
	oSA2Mod:setValue("A2_TIPO",      "J"         ) // Tipo 
	oSA2Mod:setValue("A2_EST",       "SP"        ) // Estado
	oSA2Mod:setValue("A2_COD_MUN",   "06003"     ) // Codigo Municipio                
	oSA2Mod:setValue("A2_MUN",       "BAURU"    ) // Municipio
	oSA2Mod:setValue("A2_CGC",       "00000000000000"       ) // CNPJ/CPF            

	//Se conseguir validar as informa��es
	If oModel:VldData()

		//Tenta realizar o Commit
		If oModel:CommitData()
			lDeuCerto := .T.

		//Se n�o deu certo, altera a vari�vel para false
		Else
			lDeuCerto := .F.
		EndIf

	//Se n�o conseguir validar as informa��es, altera a vari�vel para false
	Else
		lDeuCerto := .F.
	EndIf

	//Se n�o deu certo a inclus�o, mostra a mensagem de erro
	If ! lDeuCerto
		//Busca o Erro do Modelo de Dados
		aErro := oModel:GetErrorMessage()

		//Monta o Texto que ser� mostrado na tela
		AutoGrLog("Id do formul�rio de origem:"  + ' [' + AllToChar(aErro[01]) + ']')
		AutoGrLog("Id do campo de origem: "      + ' [' + AllToChar(aErro[02]) + ']')
		AutoGrLog("Id do formul�rio de erro: "   + ' [' + AllToChar(aErro[03]) + ']')
		AutoGrLog("Id do campo de erro: "        + ' [' + AllToChar(aErro[04]) + ']')
		AutoGrLog("Id do erro: "                 + ' [' + AllToChar(aErro[05]) + ']')
		AutoGrLog("Mensagem do erro: "           + ' [' + AllToChar(aErro[06]) + ']')
		AutoGrLog("Mensagem da solu��o: "        + ' [' + AllToChar(aErro[07]) + ']')
		AutoGrLog("Valor atribu�do: "            + ' [' + AllToChar(aErro[08]) + ']')
		AutoGrLog("Valor anterior: "             + ' [' + AllToChar(aErro[09]) + ']')

		//Mostra a mensagem de Erro
		MostraErro()
	EndIf

	//Desativa o modelo de dados
	oModel:DeActivate()

	RestArea(aArea)
Return