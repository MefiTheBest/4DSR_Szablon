private ["_type", "_unit"]; 			//nie tykać
_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
_rodzajSil = _this select 2;			//nie tykać
if (!local _unit) exitWith {};			//nie tykać
if (!isServer) exitWith {};				//nie tykać

// CZYSZCZENIE WYPOSAŻENIA
clearWeaponCargoGlobal _jednostka;
clearMagazineCargoGlobal _jednostka;
clearItemCargoGlobal _jednostka;
clearBackpackCargo _jednostka;

#include "wyp_definicje.sqf" //NIE TYKAĆ

switch (_typJednostki) do {
	
	//Dla BWP-1, KTO ROSOMAK
	case "bwp":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms,35];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,10];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,35];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,10];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,20];
				_jednostka addItemCargoGlobal [_amunicjaDosr25,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKmUsa,5];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaM4,10];
				_jednostka addItemCargoGlobal [_amunicjaM136,10];
				_jednostka addItemCargoGlobal [_m136,10];
				_jednostka addItemCargoGlobal [_amunicjaDoJaveina,3];
				_jednostka addItemCargoGlobal [_amunicjaDoStingera,3];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandaz,15];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,8];
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,5];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		};
		
	// MEDEVAC 
	case "medevac":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_bandaz ,15];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_bandaz ,15];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_bandaz ,15];
			};
		};
		_jednostka addItemCargoGlobal [_bandaz,50];
		_jednostka addItemCargoGlobal [_morfina,30];
		_jednostka addItemCargoGlobal [_adrenalina,30];
		_jednostka addItemCargoGlobal [_atropina,30];
		_jednostka addItemCargoGlobal [_staza,10];
		_jednostka addItemCargoGlobal [_kajdanki,20];
		_jednostka addItemCargoGlobal [_zatyczkiDoUszu,20];
		_jednostka addItemCargoGlobal [_osocze500ml,10];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		};
		
	// BLACK HOWK
	case "smiglowiec":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms ,75];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,25];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,10];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,20];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,20];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,5];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi ,75];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,25];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,10];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,20];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,20];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,5];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,50];
				_jednostka addItemCargoGlobal [_amunicjaDosr25,25];
				_jednostka addItemCargoGlobal [_amunicjaDoKmUsa,10];
				_jednostka addItemCargoGlobal [_amunicjaDoGranatnikaM4,20];
				_jednostka addItemCargoGlobal [_amunicjaM136,20];
				_jednostka addItemCargoGlobal [_m136,20];
				_jednostka addItemCargoGlobal [_amunicjaDoJaveina,5];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,50];
		_jednostka addItemCargoGlobal [_bandaz,20];
		_jednostka addItemCargoGlobal [_morfina,10];
		_jednostka addItemCargoGlobal [_adrenalina,10];
		_jednostka addItemCargoGlobal [_atropina,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];

	};	
	
	// POJAZD SAPERSKI
	case "saperski":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms ,15];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi ,15];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,15];
			};
		};
		_jednostka addItemCargoGlobal [_malyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_duzyLadunekWybuchowy,10];
		_jednostka addItemCargoGlobal [_zapalnikM26,3];
		_jednostka addItemCargoGlobal [_bandaz,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
		_jednostka addItemCargoGlobal [_solFizjologiczna500ml,2];
		_jednostka addItemCargoGlobal [_bialyDym,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,10];
		_jednostka addItemCargoGlobal [_flaraCzerwona,10];
	};	
	
	// POJAZD PIECHOTY
	case "humvee":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms,25];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,8];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,2];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,2];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,25];
				_jednostka addItemCargoGlobal [_amunicjaDoRpgVL,8];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,5];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,2];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,2];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,25];
				_jednostka addItemCargoGlobal [_amunicjaM136,8];
				_jednostka addItemCargoGlobal [_m136,8];
				_jednostka addItemCargoGlobal [_amunicjaDoKmUsa,5];
				_jednostka addItemCargoGlobal [_amunicjaDoJaveina,2];
				_jednostka addItemCargoGlobal [_amunicjaDoStingera,2];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,20];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		_jednostka addItemCargoGlobal [_bandaz,10];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// CIEŻARÓWKI ZAOPATRZENIOWE
	case "zaopatrzenie":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms,50];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,8];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,50];
				_jednostka addItemCargoGlobal [_amunicjaDoAlexa,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKm,8];
				_jednostka addItemCargoGlobal [_amunicjaDoSPIKE,3];
				_jednostka addItemCargoGlobal [_amunicjaDoIgly,3];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,25];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,25];
				_jednostka addItemCargoGlobal [_amunicjaDosr25,10];
				_jednostka addItemCargoGlobal [_amunicjaDoKmUsa,8];
				_jednostka addItemCargoGlobal [_amunicjaDoJaveina,3];
				_jednostka addItemCargoGlobal [_amunicjaDoStingera,3];
			};
		};
		_jednostka addItemCargoGlobal [_bialyDym,30];
		_jednostka addItemCargoGlobal [_granatBojowy,10];
		_jednostka addItemCargoGlobal [_swiatloChemiczneCzerwone,5];
		_jednostka addItemCargoGlobal [_flaraCzerwona,5];
		_jednostka addItemCargoGlobal [_bandaz,20];
		_jednostka addItemCargoGlobal [_morfina,5];
		_jednostka addItemCargoGlobal [_adrenalina,5];
		_jednostka addItemCargoGlobal [_atropina,5];
	};
	
	// POJAZDY NAPRAWCZE
	case "naprawczy":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal [_amunicjaDoMdms ,15];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi ,15];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_amunicjaDoM4ZeSmugowymi ,15];
				_jednostka addItemCargoGlobal [_amunicjaDoM4BezSmugowych ,15];
			};
		};
		_jednostka addItemCargoGlobal [_narzedzia,2];
	};
	
	// DLA SNAJPERÓW
	case "zwiadowcy":{
		switch (_rodzajSil) do {
			case "kawaleria":{
				_jednostka addItemCargoGlobal ["PSZ_Tor" ,1];
				_jednostka addItemCargoGlobal ["PSZ_Alex338" ,1];
				_jednostka addItemCargoGlobal ["R3F_M107_DES" ,1];
				_jednostka addItemCargoGlobal ["PSZ_127x99_Tor_7_R" ,10];
				_jednostka addItemCargoGlobal ["PSZ_86x70_Alex_5" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["PSZ_9x19_P99_16" ,4];
			};
			case "piechota":{
				_jednostka addItemCargoGlobal ["PSZ_Tor" ,1];
				_jednostka addItemCargoGlobal ["PSZ_Alex338" ,1];
				_jednostka addItemCargoGlobal ["R3F_M107_DES" ,1];
				_jednostka addItemCargoGlobal ["PSZ_127x99_Tor_7_R" ,10];
				_jednostka addItemCargoGlobal ["PSZ_86x70_Alex_5" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["PSZ_9x19_P99_16" ,4];
			};
			case "amerykanska":{
				_jednostka addItemCargoGlobal [_m2010 ,1];
				_jednostka addItemCargoGlobal [_m107 ,1];
				_jednostka addItemCargoGlobal [_sr25 ,1];
				_jednostka addItemCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag" ,10];
				_jednostka addItemCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010" ,10];
				_jednostka addItemCargoGlobal ["R3F_10Rnd_127x99_PEI_M107" ,2];
				_jednostka addItemCargoGlobal ["rhsusf_mag_7x45acp_MHP" ,4];
			};
		};
				_jednostka addItemCargoGlobal [_dwojnog ,2];
				_jednostka addItemCargoGlobal ["Leupold_Mk4" ,1];
				_jednostka addItemCargoGlobal ["optic_DMS" ,2];
				_jednostka addItemCargoGlobal ["optic_LRPS" ,2];
				_jednostka addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag" ,5];
				_jednostka addItemCargoGlobal ["ACE_HandFlare_Red" ,4];
				_jednostka addItemCargoGlobal ["B_IR_Grenade" ,5];
				_jednostka addItemCargoGlobal ["Chemlight_yellow" ,2];
				_jednostka addItemCargoGlobal ["SmokeShellGreen" ,5];
				_jednostka addItemCargoGlobal ["SmokeShellRed" ,5];
				_jednostka addItemCargoGlobal ["SmokeShell" ,20];
				_jednostka addItemCargoGlobal ["HandGrenade" ,5];
				_jednostka addItemCargoGlobal [_bandaz ,20];
				_jednostka addItemCargoGlobal [_morflina ,10];
				_jednostka addItemCargoGlobal [_adrenalina ,5];
				_jednostka addItemCargoGlobal [_atropina ,5];
				_jednostka addItemCargoGlobal [_osocze500ml ,5];
				_jednostka addItemCargoGlobal [_solFizjologiczna500ml ,10];
	};
}
