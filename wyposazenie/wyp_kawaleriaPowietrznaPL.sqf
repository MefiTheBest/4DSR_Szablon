private ["_type", "_unit"]; 			//nie tykać
_typJednostki = _this select 0;			//nie tykać
_jednostka = _this select 1;			//nie tykać
if (!local _unit) exitWith {};			//nie tykać
if (!isServer) exitWith {};				//nie tykać

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
_jednostka forceAddUniform _mundurPolskiLas;
_jednostka addHeadgear _helm;
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
_jednostka addItemToUniform _beret;
_jednostka addItemToUniform _zatyczkiDoUszu;
_jednostka addGoggles _gogleZolte;

switch (_typJednostki) do {

	// WYPOSAŻENIE DOWÓDCY
	case "dow":{
		_jednostka addVest _kamizelkaPolskaLasDowodca;
		_jednostka addItemToUniform _eotech;
		_jednostka addmagazines [_flaraCzerwona,4];
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,4];
		_jednostka addmagazines [_amunicjaDoMdms,10];
		_jednostka addBackpack _dlugieRadio;
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_atropina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
	
	case "strzelec":{	
		_jednostka addItemToUniform _eotech;
		_jednostka addVest "PSZ_V_UKO_H_WDL_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoMdms,10];
		_jednostka addmagazines [_niebieskiDym,3];
		_jednostka addmagazines [_swiatloChemiczneNiebieskie,2];
		_jednostka addBackpack "PSZ_B_wz93_WDL";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatnikM32,1];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_minaPulapka,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoP99,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoTora,8];
		_jednostka addItemToBackpack "ACE_DAGR";
		_jednostka addItemToBackpack "ACE_ATragMX";
		_jednostka addItemToBackpack "ACE_microDAGR";
		_jednostka addItemToBackpack "ACE_MapTools";
		_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
		_jednostka addWeapon "PSZ_Tor";
		_jednostka addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
		_jednostka addWeapon "PSZ_P99";
		_jednostka addHandgunItem "muzzle_snds_L";
		_jednostka addWeapon "ACE_Vector";
	};
	
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
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,20];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,10];
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
		_jednostka addItem "ACE_MapTools";
		_jednostka addHeadgear "PSZ_H_Booniehat_WDL";
		_jednostka addWeapon _msds;
		_jednostka addPrimaryWeaponItem _tlumik;
		_jednostka addPrimaryWeaponItem _laser;
		_jednostka addPrimaryWeaponItem _mrco;
		_jednostka addWeapon "PSZ_P99";
		_jednostka addHandgunItem "muzzle_snds_L";
		_jednostka addWeapon "ACE_Vector";
	};
	
	case "saper":{
		_jednostka addItemToUniform "PSZ_AccO_EOT552";
		_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoMdms,10];
		_jednostka addBackpack "PSZ_B_wz93_WDL";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
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
	
	case "strzelecwyborowy":{
		_jednostka addVest "PSZ_V_UKO_L_WDL_R_Headset";
		_jednostka addmagazines [_granatBojowy,2];
		_jednostka addmagazines [_amunicjaDoAlexa,10];
		_jednostka addmagazines [_swiatloChemiczneZolte,2];
		_jednostka addBackpack "PSZ_B_wz93_WDL";
		(unitBackpack _jednostka) addItemCargoGlobal [_bandaz,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_morfina,5];
		(unitBackpack _jednostka) addItemCargoGlobal [_adrenalina,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_zoltyDym,3];
		(unitBackpack _jednostka) addItemCargoGlobal [_bialyDym,10];
		(unitBackpack _jednostka) addItemCargoGlobal [_granatHukowy,2];
		(unitBackpack _jednostka) addItemCargoGlobal [_amunicjaDoAlexa,2];
		_jednostka addWeapon _alex;
		_jednostka addPrimaryWeaponItem _celownikSOS;
		_jednostka addWeapon _bocznaFlara;
		_jednostka addWeapon _dalmierz;
		[_jednostka,"PSZ_Insignia_6BDSZ_W"] call bis_fnc_setUnitInsignia;
	};
	
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
