//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zLogi08
Demonstrando arrays em AdvPL
@author Atilio
@since 24/02/2020
@version 1.0
@type function
@see https://tdn.totvs.com/display/tec/Tipos+de+Dados
/*/

User Function zLogi08()
	Local aArea := GetArea()
    Local aNomes := {}
    Local aSobreNome := Array(3)
    Local aPessoa := {}
    Local nAtual
    Local nPos
    Local cDataFormatada
	
    aAdd(aNomes, "Daniel")
    aAdd(aNomes, "Terminal")

    aSobreNome[1] := "Atilio"
    aSobreNome[2] := "de Informação"

    //Array Multidimensional
    aAdd(aPessoa, {"Daniel", sToD("19930712"), "Bauru"})
    aAdd(aPessoa, {"Joao", sToD("19910131"), "Agudos"})
    aAdd(aPessoa, {"Maria", sToD("19921231"), "Piratininga"})
    aAdd(aPessoa, {"Péricles", sToD("20000128"), "Irecê"})

    For nAtual := 1 To Len(aPessoa)
        // cDataFormatada := DTOC(aPessoa[nAtual][2],"dd/MM/yyyy") Formas de manipular data de um array
        // cDataFormatada := Transform(aPessoa[nAtual][2], "@E 99/99/9999")
        cDataFormatada := StrZero(Day(aPessoa[nAtual][2]), 2) + "/" + StrZero(Month(aPessoa[nAtual][2]), 2) + "/" + Str(Year(aPessoa[nAtual][2]), 4)
        // Alert(aPessoa[nAtual][1] + " nasceu no dia " + cDataFormatada + " em " + aPessoa[nAtual][3])
    Next

    //Inserindo elemento no Array
    // aSize(aPessoa, Len(aPessoa) + 1)
    // aIns(aPessoa, 4)
    // aPessoa[4] := {"Terminal de Informacao", sToD("20120808"), "Internet"}
    // Alert("Linha 2, Coluna 1: " + aPessoa[2][1])

    //Procurando um elemento no array
    nPos := aScan(aPessoa, {|x| AllTrim(Upper(x[1])) == "JOAO"})
    If nPos > 0
        // MsgInfo("Vanuzia encontrado, na linha " + cValToChar(nPos) + ".", "Atencao")
    Else
        // MsgAlert("Vanuzia nao foi encontrado!", "Atencao")
    EndIf

    //Excluindo elemento no 
    aDel(aPessoa, nPos)
    aSize(aPessoa, Len(aPessoa) - 1)
    Alert("Array aPessoa com " + cValToChar(Len(aPessoa)) + " linhas")
	
	RestArea(aArea)
Return
