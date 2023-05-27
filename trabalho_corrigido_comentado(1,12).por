programa
{
//faça um programa que leia 4 valores inteiros: dia,mes,ano e valor
//estes valores equivalem aos dados basicos de uma compra.
//o programa deve:
//->validar se dia, mes e ano formam uma data valida
//->validar se o valor se esta entre 1 e 999
//se dois testes anteriores passarem, escrever:em (dia) de (mes por extenso) de (ano) foi feita uma compra no valor de (valor por extenso)

// Partcipantes: Bruno Platcheck
//			  Arthur Wentz
//			  Douglas Torres	


	funcao inicio()
	{	
		//variáveis utilizadas no processamento do código.
		
		inteiro	valor
		inteiro	ano
		inteiro	mes
		inteiro	dia
		inteiro	unidaden
		inteiro	dezenan
		inteiro	restodez
		inteiro	centenan
		cadeia	nome_mes=""
		cadeia	unidade
		cadeia	dezena
		cadeia 	centena
		cadeia	data_valida

		//Interação do usuário, onde será feita a entrada dos dados a serem processados.
		
		escreva("Dia: ")
		leia(dia)
		escreva("Mês: ")
		leia(mes)
		escreva("Ano: ")
		leia(ano)
		escreva("Valor: ")
		leia(valor)

		// Teste de validação, se o número menor que 1 e maior que 999, for falso irá executar o próximo operador lógico. 
		// Caso sejá verdadeiro o código irá retornar que o valor é Inválido.		
		se(valor<1 ou valor >999)
		{
			data_valida = "invalida"
		}
		senao
		{	
			// Teste de validação referente aos meses
			se(mes<1 ou mes>12)
			{
				data_valida = "invalida"
			}
			senao
			{
				//Teste de validação refentes aos meses com até 31 dias.
				// inteiro mes
				se((mes==1 ou mes==3 ou mes==5 ou mes==7 ou mes==8 ou mes==10 ou mes==12)e(dia<1 ou dia>31))
				{
					data_valida = "invalida"
				}
				senao
				{
					//Teste de validação refentes aos meses com até 31 dias.
					// inteiro mes
					se((mes==4 ou mes==6 ou mes==9 ou mes==11)e(dia<1 ou dia>30))
					{
						data_valida = "invalido"
					}
					senao
					{
						//Teste de validaçao referente ao mês de fevereiro no ano normal
						//inteiro mes inteiro dia inteiro ano
						se(mes==2 e (ano%100 == 0 e ano%400 != 0) e (dia<1 ou dia>28))
						{
							
							data_valida = "invalido"
							
						}
						senao
						{
							
							//Teste de validação refente ao mês de fevereiro no ano bissexto.
							//inteiro mes inteiro dia inteiro ano
							se(mes==2 e ((ano%4 != 0) ou (ano%100 == 0 e ano%400!=0)) e (dia<1 ou dia>28))
							{
								data_valida = "invalido"
							}
							senao
							{
								
								//Teste de validação refente ao mês de fevereiro no ano bissexto.
								//inteiro mes inteiro dia inteiro ano
								se(mes==2 e ((ano%4 == 0 e ano%100!=0) ou ano%400 == 0) e (dia<1 ou dia>29))
								{
									data_valida = "invalido"
								}
							senao
							{
								data_valida = "valida"

								// Cadeia mes_nome - Variável ontem armazena o dado de entrada referente ao mês.
								// para que ele possa ser usado na operação lógica para escrever por extenso, logo apos o teste ser válidado
								se( mes == 01 )
								{
									nome_mes= "Janeiro" 
								}
								senao
								{
									se( mes == 02)
									{
										nome_mes="Fevereiro"
									} 
									senao
									{
										se( mes == 03)
										{
											nome_mes="Março"
										} 
										senao
										{
											se( mes == 04)
											{
												nome_mes= "Abril"
											} 
											senao
											{
												se( mes == 05)
												{
													nome_mes="Maio"
												} 
												senao
												{
													se( mes == 06)
													{
														nome_mes="Junho" 
													} 
													senao
													{
														se( mes == 07)
														{
															nome_mes="Julho"
														} 
														senao
														{
															se( mes == 08)
															{
																nome_mes="Agosto"
															} 
															senao
															{
																se(mes == 09)
																{
																	nome_mes="Setembro"
																} 
																senao
																{
																	se(mes == 10)
																	{
																		nome_mes="Outubro"
																	} 
																	senao
																	{
																		se(mes == 11)
																		{
																			nome_mes="Novembro"
																		} 
																		senao
																		{
																			nome_mes="Dezembro"
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}	
					}
				}
			}
			}		
		}

		// Calculo para simplificar o operação Escolha Caso.
		// Neste caso foi utilizado para simplificar as centenas, dezenas e unidades
		centenan = valor / 100
		dezenan = (valor%100) / 10
		unidaden = (valor%100)%10
		restodez = (valor%100)

		// Operador escolha caso, referente a centena, onde será a salvo o dado para executar o processamento com a saída informando o usuário.
		escolha(centenan)
		{
			caso 1:
				centena = "cento"
				pare
			caso 2: 
				centena = "duzentos"
				pare
			caso 3:
				centena = "trezentos"
				pare
			caso 4:
				centena = "quatrocentos"
				pare
			caso 5:
				centena = "quinhentos"
				pare
			caso 6: 
				centena = "seiscentos"
				pare
			caso 7:
				centena =	"setecentos"
				pare
			caso 8:
				centena = "oitocentos"
				pare
			caso contrario:
				centena = "novecentos"	
				pare
							
		}
		// Operador escolha caso, referente a unidade, onde será a salvo o dado para executar o processamento com a saída informando o usuário
		escolha(unidaden)
			{
				caso 1:
					unidade = "um"
					pare
				caso 2: 
					unidade = "dois"
					pare
				caso 3:
					unidade = "três"
					pare
				caso 4:
					unidade = "quatro"
					pare
				caso 5:
					unidade = "cinco"
					pare
				caso 6: 
					unidade = "seis"
					pare
				caso 7:
					unidade =	"sete"
					pare
				caso 8:
					unidade = "oito"
					pare
				caso 9:
					unidade = "nove"	
					pare
				caso contrario:
					unidade = ""			
			}
		// Operador escolha caso, referente a dezena, onde será a salvo o dado para executar o processamento com a saída informando o usuário
		escolha(dezenan)
		{
			caso 1:
				dezena = "Dez"
				pare
			caso 2: 
				dezena = "Vinte"
				pare
			caso 3:
				dezena = "trinta"
				pare
			caso 4:
				dezena = "quarenta"
				pare
			caso 5:
				dezena = "cinquenta"
				pare
			caso 6: 
				dezena = "sessenta"
				pare
			caso 7:
				dezena =	"setenta"
				pare
			caso 8:
				dezena = "oitenta"
				pare
			caso 9:
				dezena = "noventa"	
				pare
			caso contrario:
				dezena = ""
				pare						
		}
		escolha(dezenan)
		{
		caso 1:
			se(restodez == 11)
			{
				dezena = "onze"
				pare
			}
			senao
			{
				se(restodez == 12)
				{
					dezena = "doze"
					pare
				}
				senao
				{
					se(restodez == 13)
					{
						dezena = "treze"
						pare
					}
					senao
					{
						se(restodez == 14)
						{
							dezena = "quatorze"
							pare
						}
						senao
						{
							se(restodez == 15)
							{
								dezena = "quinze"
								pare
							}
							senao
							{
								se(restodez == 16)
								{
									dezena = "dezesseis"
									pare
								}
								senao
								{
									se(restodez == 17)
									{
										dezena = "dezessete"
										pare
									}
									senao
									{
										se(restodez == 18)
										{
											dezena = "dezoito"
											pare
										}
										senao
										{
											se(restodez == 19)
											{
												dezena = "dezenove"
												pare
											}
											senao
											{
												dezena = "dez"
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}

		//Processamento final, onde temos alguns testes de validações já aceito, e com alguns testes a serem verificados antes de ser executado..
		se((valor>0 e valor<10) e data_valida == "valida")
		{
			escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",unidade," R$")
		}
		senao
		{
			se(valor == 10)
			{
				escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de dez R$")
			}
			senao
			{
				se((valor>10 e valor<=20) e data_valida == "valida")
				{
					escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",dezena," R$")
				}
				senao
				{
					se((valor>20 e valor<100) e (data_valida == "valida") e valor%10 == 0)
					{
						escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",dezena," R$")
					}
					senao
					{
						se((valor>20 e valor<100) e (data_valida == "valida") e valor%10 != 0)
						{
							escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",dezena," e ",unidade," R$")
						}
						senao
						{
							se((valor==100) e data_valida == "valida")
							{
								escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de cem R$")
							}
							senao
							{
								se((valor>100 e valor<=999) e data_valida == "valida" e valor%100 == 0 e valor%10 == 0)
								{
									escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",centena," R$")
								}
								senao
								{
									se((valor>100 e valor<=999) e data_valida == "valida" e valor%100 != 0 e valor%10 == 0 )
									{
										escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",centena," e ", dezena," R$")
									}
									senao
									{
										se((valor>100 e valor<=999) e data_valida == "valida" e valor%100 != 0 e valor%10 != 0 e(valor%100 > 10 e valor%100 <20))
										{
											escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",centena," e ", dezena," R$")
										}
										senao
										{
											se((valor>100 e valor<=999) e data_valida == "valida" e valor%10 != 0 e valor%100 != 0 e ((valor%100) / 10 == 0))
											{
												escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",centena," e ", unidade," R$")
											}
											senao
											{
												se((valor>100 e valor<=999) e data_valida == "valida" e valor%10 != 0 e valor%100 != 0)
												{
													escreva("Em ",dia," de ",nome_mes," de ",ano,"\nFoi feita uma compra no valor de ",centena," e ", dezena," e ",unidade," R$")
												}
												senao
												{
													escreva("Valor ou data invalido")
												}
											}
										}
									}
								}
							}
						}
					}
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
 * @POSICAO-CURSOR = 3398; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */