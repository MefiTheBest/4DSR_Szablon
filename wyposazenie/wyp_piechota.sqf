if (!local _unit) exitWith {};			//nie tykać
if (!isServer) exitWith {};				//nie tykać
private ["_type", "_unit"]; 			//nie tykać

_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
_przydzial = _this select 2;			//nie tykać

// CZYSZCZENIE WYPOSAŻENIA
removeAllWeapons _jednostka;
removeAllItems _jednostka;
removeAllAssignedItems _jednostka;
removeUniform _jednostka;
removeVest _jednostka;
removeBackpack _jednostka;
removeHeadgear _jednostka;
removeGoggles _jednostka;

#include "wyp_definicje.sqf" //NIE TYKAĆ

// DODAWANIE RZECZY OGÓLNYCH
_jednostka linkItem _mapa;
_jednostka linkItem _kompas;
_jednostka linkItem _dagr;
_jednostka linkItem _gps;
_jednostka linkItem _noktowizja;
_jednostka linkItem _radio;

_jednostka addItemToUniform _kajdanki;
_jednostka addItemToUniform _kajdanki;
_jednostka addItemToUniform _stroboskop;
_jednostka addItemToUniform _stroboskop;
_jednostka addItemToUniform _zatyczkiDoUszu;
_jednostka addItemToUniform "ACE_MapTools";
_jednostka addGoggles _gogleZolte;

switch (_typJednostki) do {

	case "kawaleriaPowietrznaPolska":{
		
		_jednostka forceAddUniform _mundurPolskiLas;
		_jednostka addHeadgear _helm;
		_jednostka addItemToUniform _beret;
		
		switch (_przydzial) do {

			// WYPOSAŻENIE DOWÓDCY
			case "dow":{
				_jednostka addVest _kamizelkaPolskaLasDowodca;
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_flaraCzerwona,4];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack _dlugieRadio;
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addItemToBackpack _bateriaDoWskaznika;
				_jednostka addWeapon _wskaznikLaserowy;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;  

			};
	
			// WYPOSAŻENIE MEDYKA
			case "med":{
				_jednostka addVest "PSZ_V_UKO_H_WDL_M_Headset";
				_jednostka addItemToUniform _eotech;
				 _jednostka addmagazines [_granatBojowy,2];
				 _jednostka addmagazines [_amunicjaDoMdms,10];
				 _jednostka addmagazines [_granatHukowy,2];
				 _jednostka addBackpack "PSZ_B_wz93_Medical_WDL";
				 (unitBackpack _jednostka) addItemCargoGlobal [_bandaz,30];
				 (unitBackpack _jednostka) addItemCargoGlobal [_bandazElastyczny,30];
				 (unitBackpack _jednostka) addItemCargoGlobal [_morfina,15];
				 (unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,15];
				 (unitBackpack _jednostka) addItemCargoGlobal [_atropina,15];
				 (unitBackpack _jednostka) addItemCargoGlobal [_staza,8];
				 (unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,5];
				 (unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,10];
				 (unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				 (unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				 (unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,4];
				 _jednostka addWeapon _msds;
				 _jednostka addPrimaryWeaponItem _tlumik;
				 _jednostka addPrimaryWeaponItem _laser;
				 _jednostka addPrimaryWeaponItem _mrco;
				 _jednostka addWeapon _bocznaFlara;
				 _jednostka addWeapon _dalmierz;
				 [_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
			
			//WYPOSAŻENIE STRZELCA
			case "strzelec":{	
				_jednostka addItemToUniform _eotech;
				_jednostka addVest "PSZ_V_UKO_H_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addmagazines [_niebieskiDym,3];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoMdms,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE GRENADIERA
			case "grenadier":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_granatnikM32,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoGranatnikaM433,8];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO KM
			case "amunicyjnykm":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_niebieskiDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zapasowaLufa,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKm,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO KM
			case "celowniczykm":{
				_jednostka addItemToUniform "PSZ_AccO_PCS5";
				_jednostka addVest "PSZ_V_UKO_L_WDL_MG_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoKm,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _km;
				_jednostka addPrimaryWeaponItem _celownikDlaKm;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO RPG
			case "celowniczyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItemToUniform "rhs_acc_1pn93_2";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _rpg7;
				_jednostka addSecondaryWeaponItem _celownikDlaRpg;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO RPG
			case "amunicyjnyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneCzerwone,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;  
			};
			
			//WYPOSAŻENIE SNAJPERA
			case "snajper":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_WDL";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadio;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoTora,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoTora,8];
				_jednostka addItemToBackpack "ACE_DAGR";
				_jednostka addItemToBackpack "ACE_ATragMX";
				_jednostka addItemToBackpack "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
				_jednostka addWeapon "PSZ_Tor";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE OBSERWATORA
			case "obserwator":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_WDL";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadio;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoMdms,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack _dlugieRadio;
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoMdms,8];
				_jednostka addItem "ACE_DAGR";
				_jednostka addItem "ACE_ATragMX";
				_jednostka addItem "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE SAPERA
			case "saper":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoMdms,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack _duzyLadunekWybuchowy;
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
			
			//WYPOSAŻENIE STRZELCA WYBOROWEGO
			case "strzelecwyborowy":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoAlexa,10];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoAlexa,2];
				_jednostka addWeapon _alex;
				_jednostka addPrimaryWeaponItem _celownikSOS;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			//WYPOSAŻENIE OPERATORA DRONA
			case "operatordrona":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_H_WDL_CO_Headset";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _gps;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoMdms,6];
				_jednostka addmagazines [_bialyDym,5];
				_jednostka addmagazines [_pomaranczowyDym,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "B_UAV_01_backpack_F";
				_jednostka addWeapon _msds;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addItemToBackpack _bateriaDoWskaznika;
				_jednostka addWeapon _wskaznikLaserowy;
				_jednostka linkItem "B_UavTerminal";
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
		}
	};
	
	//POLSKA PIECHOTA LAS
	case "polskaPiechotaLas":{
		_jednostka forceAddUniform "PSZ_U_PL_WDL_wz2010_Crye";
		_jednostka addHeadgear _helm;
		_jednostka addItemToUniform _beret;

		switch (_przydzial) do {

			// WYPOSAŻENIE DOWÓDCY
			case "dow":{
				_jednostka addVest "PSZ_V_UKO_H_WDL_CO_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_flaraCzerwona,4];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack _dlugieRadio;
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addItemToBackpack _bateriaDoWskaznika;
				_jednostka addWeapon _wskaznikLaserowy;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;  

			};
	
			// WYPOSAŻENIE MEDYKA
			case "med":{
				_jednostka addVest "PSZ_V_UKO_H_WDL_M_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatHukowy,2];
				_jednostka addBackpack "PSZ_B_wz93_Medical_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandazElastyczny,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,8];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,4];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE GRENADIERA
			case "grenadier":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _berylZGranatnikiem;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE STRZELCA RTO
			case "rto":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "tf_rt1523g_black";
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE MECHANIKA
			case "mechanik":{
				removeUniform _jednostka;
				_jednostka forceAddUniform "PSZ_U_PL_WDL_wz2010_Polar";
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_narzedzia,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,6];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz; 
				[this,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO KM
			case "amunicyjnykm":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_niebieskiDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zapasowaLufa,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKm,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO KM
			case "celowniczykm":{
				_jednostka addItemToUniform "PSZ_AccO_PCS5";
				_jednostka addVest "PSZ_V_UKO_L_WDL_MG_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoKm,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _km;
				_jednostka addPrimaryWeaponItem _celownikDlaKm;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO RPG
			case "celowniczyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItemToUniform "rhs_acc_1pn93_2";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _rpg7;
				_jednostka addSecondaryWeaponItem _celownikDlaRpg;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO RPG
			case "amunicyjnyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneCzerwone,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;  
			};
	
			//WYPOSAŻENIE SNAJPERA
			case "snajper":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_WDL";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoTora,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoTora,8];
				_jednostka addItemToBackpack "ACE_DAGR";
				_jednostka addItemToBackpack "ACE_ATragMX";
				_jednostka addItemToBackpack "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
				_jednostka addWeapon "PSZ_Tor";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE OBSERWATORA
			case "obserwator":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_WDL";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack _dlugieRadio;
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,8];
				_jednostka addItem "ACE_DAGR";
				_jednostka addItem "ACE_ATragMX";
				_jednostka addItem "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE SPECJALISTY OD ŁADUNKÓW WYBUCHOWYCH
			case "saperladunki":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack _duzyLadunekWybuchowy;
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			//WYPOSAŻENIE SAPERA
			case "saper":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack "MineDetector";
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			//WYPOSAŻENIE STRZELCA WYBOROWEGO
			case "strzelecwyborowy":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoAlexa,10];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoAlexa,2];
				_jednostka addWeapon _alex;
				_jednostka addPrimaryWeaponItem _celownikSOS;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO SPIKE
			case "amunicyjnyspike":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset"; 
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,1];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO SPIKE
			case "celowniczyspike":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_zielonyDym,2];
				_jednostka addBackpack "PSZ_B_wz97_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,1];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _spike;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO PLOT
			case "amunicyjnyplot":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO PLOT
			case "celowniczyplot":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_WDL";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,3];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _igla;
				_jednostka addWeapon _dalmierz; 
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
	
	
			// WYPOSAŻENIE AMUNICYJNEGO MOŹDZIEŻA
			case "amunicyjnymk":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";	
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _adrenalina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addBackpack "rhs_M252_Bipod_Bag";
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE OPERATORA MOŹDZIEŻA
			case "operatormk":{
				_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";	
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _adrenalina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addBackpack "rhs_M252_Gun_Bag";
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Poland"] call bis_fnc_setUnitInsignia;
			};
	
		}

	};
	
	//POLSKA PIECHOTA PUSTYNIA
	case "polskaPiechotaPustynia":{
		_jednostka forceAddUniform "PSZ_U_PL_DES_wz2010_Crye_Folded";
		_jednostka addHeadgear "PSZ_H_wz2005_DES_ESS";
		_jednostka addItemToUniform _beret;

		switch (_przydzial) do {

			// WYPOSAŻENIE DOWÓDCY
			case "dow":{
				_jednostka addVest "PSZ_V_UKO_H_DES_CO_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_flaraCzerwona,4];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "tf_rt1523g_sage";
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addItemToBackpack _bateriaDoWskaznika;
				_jednostka addWeapon _wskaznikLaserowy;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;  

			};
	
			// WYPOSAŻENIE MEDYKA
			case "med":{
				_jednostka addVest "PSZ_V_UKO_H_DES_M_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatHukowy,2];
				_jednostka addBackpack "PSZ_B_wz93_Medical_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandazElastyczny,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,8];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,4];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_Medic"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE GRENADIERA
			case "grenadier":{
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoGranatnikaPALLAD,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _berylZGranatnikiem;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE STRZELCA RTO
			case "rto":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "tf_rt1523g_sage";
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE MECHANIKA
			case "mechanik":{
				removeUniform _jednostka;
				_jednostka forceAddUniform "PSZ_U_PL_DES_wz2010_Polar";
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_narzedzia,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,6];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz; 
				[this,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO KM
			case "amunicyjnykm":{
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addItemToUniform _eotech;
				_jednostka addmagazines [_niebieskiDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz97_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_zapasowaLufa,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKm,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO KM
			case "celowniczykm":{
				_jednostka addItemToUniform "PSZ_AccO_PCS5";
				_jednostka addVest "PSZ_V_UKO_L_DES_MG_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoKm,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _km;
				_jednostka addPrimaryWeaponItem _celownikDlaKm;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO RPG
			case "celowniczyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItemToUniform "rhs_acc_1pn93_2";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _rpg7;
				_jednostka addSecondaryWeaponItem _celownikDlaRpg;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO RPG
			case "amunicyjnyrpg":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneCzerwone,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz97_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoRpgVL,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;  
			};
	
			//WYPOSAŻENIE SNAJPERA
			case "snajper":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_DES";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoTora,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack "PSZ_B_wz97_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoTora,8];
				_jednostka addItemToBackpack "ACE_DAGR";
				_jednostka addItemToBackpack "ACE_ATragMX";
				_jednostka addItemToBackpack "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_DES";
				_jednostka addWeapon "PSZ_Tor";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE OBSERWATORA
			case "obserwator":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka addVest "PSZ_V_Kontraktor_DES";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _beret;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addBackpack "tf_rt1523g_sage";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoBerylaZeSmugowymi,8];
				_jednostka addItem "ACE_DAGR";
				_jednostka addItem "ACE_ATragMX";
				_jednostka addItem "ACE_microDAGR";
				_jednostka addHeadgear "PSZ_H_Booniehat_DES";
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon "PSZ_P99";
				_jednostka addHandgunItem "muzzle_snds_L";
				_jednostka addWeapon "ACE_Vector";
			};
	
			//WYPOSAŻENIE SPECJALISTY OD ŁADUNKÓW WYBUCHOWYCH
			case "saperladunki":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack _duzyLadunekWybuchowy;
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
			
			//WYPOSAŻENIE SAPERA
			case "saper":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack "MineDetector";
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
			
			//WYPOSAŻENIE STRZELCA WYBOROWEGO
			case "strzelecwyborowy":{
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoAlexa,10];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoAlexa,2];
				_jednostka addWeapon _alex;
				_jednostka addPrimaryWeaponItem _celownikSOS;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
			
			// WYPOSAŻENIE AMUNICYJNEGO SPIKE
			case "amunicyjnyspike":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset"; 
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz97_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,1];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE CELOWNICZEGO SPIKE
			case "celowniczyspike":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_zielonyDym,2];
				_jednostka addBackpack "PSZ_B_wz97_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoSPIKE,1];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _spike;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO PLOT
			case "amunicyjnyplot":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,2];
				_jednostka addWeapon _beryl;
				_jednostka addPrimaryWeaponItem _bipodDlaBeryla;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
			
			// WYPOSAŻENIE CELOWNICZEGO PLOT
			case "celowniczyplot":{
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addBackpack "PSZ_B_wz93_DES";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoIgly,3];
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _igla;
				_jednostka addWeapon _dalmierz; 
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO MOŹDZIEŻA
			case "amunicyjnymk":{
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";	
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addBackpack "rhs_M252_Bipod_Bag";
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
	
			// WYPOSAŻENIE OPERATORA MOŹDZIEŻA
			case "operatormk":{
				_jednostka addVest "PSZ_V_UKO_L_DES_R_Headset";	
				_jednostka addItemToUniform "PSZ_AccO_EOT552";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoBerylaZeSmugowymi,10];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addBackpack "rhs_M252_Gun_Bag";
				_jednostka addWeapon _miniBeryl;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _mrco;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
				[_jednostka,"PSZ_Insignia_ISAF"] call bis_fnc_setUnitInsignia;
			};
		}
	};
	
	//AMERYKAŃSKA PIECHOTA LAS
	case "amerykanskaPiechotaLas":{
	_jednostka forceAddUniform "rhs_uniform_FROG01_wd";
	_jednostka addHeadgear "rhsusf_mich_helmet_marpatwd_headset";
		
		switch (_przydzial) do {

			// WYPOSAŻENIE DOWÓDCY
			case "dow":{
				_jednostka addVest "rhsusf_spc_squadleader";
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addmagazines [_flaraCzerwona,4];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "tf_rt1523g_black";
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addItemToBackpack _bateriaDoWskaznika;
				_jednostka addWeapon _wskaznikLaserowy;
			};
	
			// WYPOSAŻENIE MEDYKA
			case "med":{
				_jednostka addVest "rhsusf_spc_corpsman";
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_granatHukowy,2];
				_jednostka addBackpack "B_Kitbag_mcamo";
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandazElastyczny,30];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,15];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,8];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_pomaranczowyDym,4];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
			};
   
			// WYPOSAŻENIE GRENADIERA
			case "grenadier":{
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoGranatnikaM4,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _m4a1ZGranatnikiem;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
			};
	
			// WYPOSAŻENIE STRZELCA
			case "strzelec":{
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};

			// WYPOSAŻENIE STRZELCA RTO
			case "rto":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "tf_rt1523g_black";
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};
	
			// WYPOSAŻENIE MECHANIKA
			case "mechanik":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_narzedzia,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_zielonyDym,6];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO KM
			case "amunicyjnykm":{
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addmagazines [_niebieskiDym,3];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_zapasowaLufa,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKmUsa,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKmUsaKrotsza,1];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};
		
			// WYPOSAŻENIE CELOWNICZEGO KM
			case "celowniczykm":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoKmUsa,3];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoKmUsa,2];
				_jednostka addWeapon _m249;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};

			// WYPOSAŻENIE STRZELCA AT
			case "strzelecat":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_czerwonyDym,3];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaM136,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _m136;
				_jednostka addSecondaryWeaponItem "rhs_acc_at4_handler";
			};
	
			//	WYPOSAŻENIE SNAJPERA
			case "snajper":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka forceAddUniform "rhs_uniform_cu_ocp";
				_jednostka addItemToUniform "ACE_Flashlight_MX991";
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addVest "rhsusf_iotv_ocp";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines ["rhsusf_mag_7x45acp_MHP",2];
				_jednostka addmagazines [_amunicjaDoP99,4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines ["MiniGrenade",2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_ocp";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
				(unitBackpack _jednostka) addItemCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];
				(unitBackpack _jednostka) addItemCargoGlobal [_workiZPiaskiem,3];
				_jednostka addItemToBackpack "ACE_DAGR";
				_jednostka addItemToBackpack "ACE_ATragMX";
				_jednostka addItemToBackpack "ACE_microDAGR";
				_jednostka addHeadgear "rhs_Booniehat_ucp";
				_jednostka addGoggles "rhs_googles_clear";
				_jednostka addWeapon "rhs_weap_XM2010_d";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_M2010S";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
				_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
				_jednostka addPrimaryWeaponItem "RH_HBLM_des";
				_jednostka addWeapon "rhsusf_weap_m1911a1";
				_jednostka addWeapon "ACE_Vector";
			};

			// WYPOSAŻENIE OBSERWATORA
			case "obserwator":{
				removeAllWeapons _jednostka;
				removeAllItems _jednostka;
				removeAllAssignedItems _jednostka;
				removeVest _jednostka;
				removeBackpack _jednostka;
				removeHeadgear _jednostka;
				removeGoggles _jednostka;
				_jednostka forceAddUniform "rhs_uniform_cu_ocp";
				_jednostka addItemToUniform "ACE_Flashlight_MX991";
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addVest "rhsusf_iotv_ocp";
				_jednostka linkItem _mapa;
				_jednostka linkItem _krotkieRadioSnajperow;
				_jednostka linkItem _kompas;
				_jednostka linkItem _dagr;
				_jednostka linkItem _gps;
				_jednostka linkItem _noktowizjaGen4;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _kajdanki;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _stroboskop;
				_jednostka addItemToUniform _zatyczkiDoUszu;
				_jednostka addmagazines ["rhsusf_mag_7x45acp_MHP",2];
				_jednostka addmagazines ["rhsusf_mag_7x45acp_MHP",4];
				_jednostka addmagazines [_bialyDym,2];
				_jednostka addmagazines [_czerwonyDym,2];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addmagazines [_granatIR,2];
				_jednostka addmagazines [_flaraCzerwona,3];
				_jednostka addmagazines ["MiniGrenade",2];
				_jednostka addBackpack "tf_rt1523g_big_bwmod_tropen";
				(unitBackpack _jednostka) addItemCargoGlobal [_tabelaBalistyczna,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_kestrel,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_atropina,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_staza,4];
				(unitBackpack _jednostka) addItemCargoGlobal [_osocze500ml,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_solFizjologiczna500ml,5];
				(unitBackpack _jednostka) addItemCargoGlobal [_apteczka,1];
				(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDosr25,6];
				(unitBackpack _jednostka) addItemCargoGlobal [_workiZPiaskiem,3];
				_jednostka addItem "ACE_DAGR";
				_jednostka addItem "ACE_ATragMX";
				_jednostka addItem "ACE_microDAGR";
				_jednostka addHeadgear "rhs_Booniehat_ucp";
				_jednostka addGoggles "rhs_googles_clear";
				_jednostka addWeapon _sr25;
				_jednostka addPrimaryWeaponItem _celownikDMS;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _dwojnog;
				_jednostka addWeapon "rhsusf_weap_m1911a1";
				_jednostka addWeapon "ACE_Vector";
			};
			 
			 //WYPOSAŻENIE SPECJALISTY OD ŁADUNKÓW WYBUCHOWYCH
			case "saperladunki":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,2];
				_jednostka addItem _zastawDoRozbrajania;
				_jednostka addItem _zapalnikM26;
				_jednostka addItem _zapalnik;
				_jednostka addItemToBackpack _duzyLadunekWybuchowy;
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};
	
			//WYPOSAŻENIE SAPERA
			case "saper":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				_jednostka addItemToBackpack _zastawDoRozbrajania;
				_jednostka addItemToBackpack _zapalnikM26;
				_jednostka addItemToBackpack _zapalnik;
				_jednostka addItemToBackpack "MineDetector";
				(unitBackpack _jednostka) addItemCargoGlobal [_malyLadunekWybuchowy,2];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};
	
			//WYPOSAŻENIE STRZELCA WYBOROWEGO
			case "strzelecwyborowy":{
				_jednostka addVest "rhsusf_spc_marksman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDosr25,5];
				_jednostka addmagazines [_amunicjaDosr25Specjalna,5];
				_jednostka addmagazines [_swiatloChemiczneZolte,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDosr25,5];
				_jednostka addWeapon _sr25;
				_jednostka addPrimaryWeaponItem _celownikDMS;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _dwojnog;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO JAVELINA
			case "amunicyjnyjavelin":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman"; 
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoJaveina,1];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
				_jednostka addWeapon _bocznaFlara;
			};

			// WYPOSAŻENIE CELOWNICZEGO JAVELINA
			case "celowniczyjavelin":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoJaveina,1];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _javelin;
				_jednostka addWeapon _dalmierz;
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO PLOT
			case "amunicyjnyplot":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoStingera,1];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _dalmierz;
			};

			// WYPOSAŻENIE CELOWNICZEGO PLOT
			case "celowniczyplot":{
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addVest "rhsusf_spc_rifleman";
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addBackpack "rhsusf_assault_eagleaiii_coy";
				(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoStingera,2];
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _stinger;
				_jednostka addWeapon _dalmierz; 
			};
	
			// WYPOSAŻENIE AMUNICYJNEGO MOŹDZIEŻA
			case "amunicyjnymk":{
				_jednostka addVest "rhsusf_spc_rifleman";	
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _adrenalina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addBackpack "rhs_M252_Bipod_Bag";
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
			};

			// WYPOSAŻENIE OPERATORA MOŹDZIEŻA
			case "operatormk":{
				_jednostka addVest "rhsusf_spc_rifleman";	
				_jednostka addItemToUniform "ACE_optic_Hamr_2D";
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _bandaz;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _morfina;
				_jednostka addItem _adrenalina;
				_jednostka addItem _adrenalina;
				_jednostka addmagazines [_granatBojowy,2];
				_jednostka addmagazines [_amunicjaDoM4BezSmugowych,5];
				_jednostka addmagazines [_amunicjaDoM4ZeSmugowymi,5];
				_jednostka addmagazines [_swiatloChemiczneZielone,2];
				_jednostka addmagazines [_bialyDym,8];
				_jednostka addmagazines [_zielonyDym,3];
				_jednostka addBackpack "rhs_M252_Gun_Bag";
				_jednostka addWeapon _m4a1;
				_jednostka addPrimaryWeaponItem _tlumik;
				_jednostka addPrimaryWeaponItem _laser;
				_jednostka addPrimaryWeaponItem _eotechusa;
				_jednostka addWeapon _bocznaFlara;
				_jednostka addWeapon _dalmierz;
			};
		}
	};
	
};

(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,15];
(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
(unitBackpack _jednostka) addItemCargoGlobal [_atropina,5];
(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
