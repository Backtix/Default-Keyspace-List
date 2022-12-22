#!/usr/bin/env bash
#Title........: Default-Keyspace-List
#Description..: Bash script for auditing WPA-Sec
#Author.......: Backtix	(forked from https://github.com/wpatoolkit)
#Link: https://github.com/Backtix/Default-Keyspace-List


# BEGIN Subfolders
subfolders=(
"2WIREXXX-[0-9][len10]"
"3Wireless-Modem-XXXX-[0-9A-F][len8]"
"Alice-12345678-[0-9a-z][len24]"
"Andared"
"AOLBB-XXXXXX-[0-9A-Z][len8]"
"Arcadyan"
"ArnetPirelli"
"ATTXXX-[0-9][len10]"
"ATTXXXX-[0-9A-Z][len10]"
"ATTXXXXXXX-[0-9a-z+][len12]"
"Axtel"
"belkin.xxx-[2-9a-f][len8]"
"Belkin.XXXX-[0-9A-F][len8]"
"belkin.xxxx-[2-9a-f][len8]"
"Belkin_XXXXXX-[0-9A-F][len8]"
"BELLXXX-[0-9A-F][len8]"
"BigPondXXXXXX-[0-9A-F][len10]"
"BrightBox-XXXXXX-[len8]"
"BTBusinessHub-XXX-[0-9][len10]"
"BTHomeHub2-XXXX-[2-9a-f][len10]"
"BTHomeHub-XXXX-[0-9a-f][len10]"
"BTHub3-XXXX-[2-9a-f][len10]"
"BTHub4-XXXX-[2-9a-f][len10]"
"BTHub5-XXXX-[2-9a-f][len10]"
"CabovisaoSagem"
"CenturyLinkXXXX-[0-9a-f][len14]"
"Comtrend"
"Contattami"
"DDW12345-[DDW123]+[0-9A-F_len6]"
"DG123456-[DG1234]+[0-9A-F_len6]"
"Digicom_XXXX-[0-9A-Z][len8]"
"Discus"
"DJAWEB_XXXXX-[0-9][len10]"
"Dlink"
"Domino-XXXX-[0-9A-F][len8]"
"E583X-XXXX-[0-9][len8]"
"E583X-XXXXX-[0-9A-F][len8]"
"EasyBox-XXXXXX-[0-9A-F][len9]"
"EEBrightBox-XXXXXX-[word-word-word]"
"Eircom"
"ELTEX-XXXX"
"Fastweb"
"FRITZ!Box Fon WLAN XXXX-[0-9][len16]"
"HG824x"
"HOME-XXXX(Cisco)-[0-9A-Z][len16]"
"HOME-XXXX(SMC)-[serial_len12]+[0-9A-F_len4]"
"HOME-XXXX-[0-9A-F][len16]"
"Huawei"
"INFINITUMXXXX-[0-9][len10]"
"Infostrada"
"InterCable"
"JAZZTEL"
"Keenetic-XXXX-[a-zA-Z0-9][len8]"
"LinksysXXXXX-[0-9a-z][len10]"
"Livebox-XXXX"
"Maxcom"
"Megared"
"MeoPirelli"
"MGTS_GPON_XXXX-[0-9a-f][len8]"
"mifi2-[0-9A-Z][len13]"
"MiFiXXXX XXX-[0-9][len11]"
"MobileWifi-XXXX-[0-9][len8]"
"NETGEARXX-[adj+noun+3digs]"
"NETIASPOT_XXXXXX-[0-9a-z][len12]"
"ONOXXXX-[0-9][len10]"
"Orange-[0-9a-f][len8] or [0-9A-F][len12]"
"Orange-XXXX-[2345679ACEF][len8]"
"Ote"
"OteBAUD"
"OteHuawei"
"PBS"
"Pirelli"
"PlusnetWireless-XXXXXX-[0-9A-F][len10]"
"PRIMEHOME-XX-[0-9a-f][len8]"
"Ptv"
"ROSTELECOM_XXXX-[ACDEFGHJKMNPQRTUXY3467][len8]"
"SAGEMCOM_XXXX-[ACDEFGHJKMNPQRTUXY3467][len8]"
"SBG123456-[SBG1234]+[0-9A-F_len6]"
"Sitecom"
"SKYXXXXX-[A-Z][len8]"
"Speedport500"
"SpeedTouchXXXXXX-[0-9A-F][len10]"
"TAKASHI-XXXXXX-[0-9A-F][len8]"
"TALKTALK-XXXXXX-[ABCDEFGHJKMNPQRTUVWXY346789][len8]"
"Technicolor-[0-9A-F][len10]"
"Tecom"
"Tele2Tu"
"Telsey"
"TELUSXXXX-[0-9a-f][len10]"
"TelstraXXXXXX-[0-9A-F][len10]"
"TG123456-[TG1234]+[0-9A-F_len6]"
"ThomsonXXXXXX-[0-9A-F][len10]"
"TIM_PN51T_XXXX-[0-9][len8]"
"TNCAPXXXXXX-[0-9A-F][len10]"
"TPG-XXXX"
"TP-LINK_Pocket_XXXX_MMMMMM"
"TP-LINK_XXXXXX-[0-9A-F][len8]"
"U12345678-[U123456]+[0-9A-F_len6]"
"UNITE-XXXX-[0-9][len8]"
"UPCXXXXXXX-[A-Z][len8]"
"Verizon"
"Verizon MIFIXXXX XXXX-[0-9][len11]"
"virginmediaXXXXXXX-[abcdefghjklmnpqrstuvwxyz][len8]"
"VirginMobile MiFiXXXX XXX-[0-9][len11]"
"VMXXXXXX-2G-[abcdefghjklmnpqrstuvwxyz][len8]"
"VMXXXXXX-5G-[abcdefghjklmnpqrstuvwxyz][len8]"
"WiFi-Arnet-XXXX(Pirelli)-[0-9a-z][len10]"
"WiFi-Arnet-XXXX-[0-9a-zA-Z][len13]"
"WifimediaR"
"WLAN"
"WLAN1-XXXXXX-[0-9A-F][len10]"
"XXXXX-[0-9A-Z][len16]"
"ZyXELXXXXXX-[0-9A-Z][len13]"
)
# END
mkdir defaultwpa
cd defaultwpa || exit
mkdir "${subfolders[@]}"

echo -e "Create .txt, .html or .md file (default)?\n <T/H/M>"
read -r mdortxt

cleanlink ()
{
	clink=$(sed -r "s/^.+\///g" <<< "$1")
	if [ "$mdortxt" == "T" ] || [ "$mdortxt" == "t" ]; then
		fileext=".txt"
		echo "$1"
	elif [ "$mdortxt" == "M" ] || [ "$mdortxt" == "m" ]; then
	fileext=".md"
	mdlink="[$clink]($1)"
	echo -e "$mdlink\n"
	elif [ "$mdortxt" == "H" ] || [ "$mdortxt" == "h" ]; then
	fileext=".html"
	echo "<p><a href=$1>$clink</a></p>"
	else
		echo "Invalid answer, exiting"
		exit 1
	fi
}


{
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/AliceGermanyKeygen.cpp
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/AliceItalyKeygen.cpp
	cleanlink http://wpacalculator.altervista.org/XL/Alice.php
 } > "./Alice-12345678-[0-9a-z][len24]/AliceDefault$fileext"

{
	cleanlink https://github.com/wpatoolkit/8-Hex-Generator
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/BelkinKeygen.cpp
	cleanlink https://bitbucket.org/dudux/belkin4xx
	cleanlink https://github.com/Konsole512/Crippled
	cleanlink http://www.routerpwn.com/belkinwpa/
	cleanlink https://raw.githubusercontent.com/devttys0/wps/master/pingens/belkin/pingen.c
} > "./belkin.xxx-[2-9a-f][len8]/BelkinDefault$fileext"

{
	cleanlink https://github.com/wpatoolkit/8-Hex-Generator
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/BelkinKeygen.cpp
	cleanlink https://bitbucket.org/dudux/belkin4xx
	cleanlink https://github.com/Konsole512/Crippled
	cleanlink http://www.routerpwn.com/belkinwpa/
	cleanlink https://raw.githubusercontent.com/devttys0/wps/master/pingens/belkin/pingen.c
} > "./Belkin.XXXX-[0-9A-F][len8]/BelkinDefault$fileext"

{
	cleanlink https://github.com/wpatoolkit/8-Hex-Generator
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/BelkinKeygen.cpp
	cleanlink https://bitbucket.org/dudux/belkin4xx
	cleanlink https://github.com/Konsole512/Crippled
	cleanlink http://www.routerpwn.com/belkinwpa/
	cleanlink https://raw.githubusercontent.com/devttys0/wps/master/pingens/belkin/pingen.c
} > "./belkin.xxxx-[2-9a-f][len8]/BelkinDefault$fileext"

{
	cleanlink https://github.com/wpatoolkit/8-Hex-Generator
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/BelkinKeygen.cpp
	cleanlink https://bitbucket.org/dudux/belkin4xx
	cleanlink https://github.com/Konsole512/Crippled
	cleanlink http://www.routerpwn.com/belkinwpa/
	cleanlink https://raw.githubusercontent.com/devttys0/wps/master/pingens/belkin/pingen.c
} > "./Belkin_XXXXXX-[0-9A-F][len8]/BelkinDefault$fileext"

{
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/DlinkKeygen.cpp
	cleanlink http://wpacalculator.altervista.org/XL/DLink.php
	cleanlink http://www.devttys0.com/2014/10/reversing-d-links-wps-pin-algorithm/
	cleanlink https://raw.githubusercontent.com/devttys0/wps/master/pingens/dlink/pingen.py
	cleanlink http://lixei.me/codigo-fonte-wpa-dlink-php-c/
	cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/DlinkKeyCalculator.java
} > "./Dlink/DlinkDefault$fileext"

{
	cleanlink http://wpacalculator.altervista.org/XL/EasyBox.php
	cleanlink http://www.wardriving-forum.de/wiki/Standardpassw%C3%B6rter
	cleanlink http://www.patent-de.com/20081120/DE102007047320A1.html
	cleanlink https://www.sec-consult.com/fxdata/seccons/prod/temedia/advisories_txt/20130805-0_Vodafone_EasyBox_Default_WPS_PIN_Vulnerability_v10$fileext
	cleanlink https://raw.githubusercontent.com/torstenfeld/EasyBoxWpaCalc/master/other_sources/easybox_keygen.sh
	cleanlink https://raw.githubusercontent.com/torstenfeld/EasyBoxWpaCalc/master/other_sources/easybox_keygen.bat
	cleanlink http://www.routerpwn.com/EasyBox/
} > "./EasyBox-XXXXXX-[0-9A-F][len9]/EasyBoxDefault$fileext"

{
	cleanlink http://wpacalculator.altervista.org/XL/SpeedTouch.php
	cleanlink http://www.nickkusters.com/en/services/thomson-speedtouch
	cleanlink http://www.md5this.com/thomson-speedtouch-crack.html
	cleanlink http://www.mentalpitstop.com/touchspeedcalc/calculate_speedtouch_default_wep_wpa_wpa2_password_by_ssid.html
	cleanlink http://klasseonline.aboehler.at/stuff/thomson/
	cleanlink http://amigdalo.tk/ST/
	cleanlink http://www.hakim.ws/st585/KevinDevine/
	cleanlink http://sodki.org/data/uploads/code/thomson.sh
	cleanlink https://github.com/wpatoolkit/10-Hex-Generator
} > "./SpeedTouchXXXXXX-[0-9A-F][len10]/SpeedTouchDefault$fileext"

{
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/VerizonKeygen.cpp
	cleanlink http://wpacalculator.altervista.org/XL/Verizon.php
	cleanlink http://aruljohn.com/fios/
	cleanlink http://www.xkyle.com/verizon-fios-wireless-key-calculator/
	cleanlink https://gist.githubusercontent.com/Eleadon/780b46a73782a12b4454/raw/6ed3749792e170953e76592c7e7324eab102d69f/verizon_fios_wep_keygen.js
} > "./Verizon/VerizonDefault$fileext"

{
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/Wlan2Keygen.cpp
	cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/Wlan6Keygen.cpp
	cleanlink http://wpacalculator.altervista.org/XL/WLAN.php
	cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/WLANXXXXKeyCalculator.java
	cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/WiFiXXXXXXKeyCalculator.java
} > "./WLAN/WLANDefault$fileext"

# BEGIN Single files
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./3Wireless-Modem-XXXX-[0-9A-F][len8]/3WirelessDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/AndaredKeygen.cpp > "./Andared/AndaredDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ArcadyanKeygen.cpp > "./Arcadyan/ArcadyanDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ArnetPirelliKeygen.cpp > "./ArnetPirelli/ArnetPirelliDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/AxtelKeygen.cpp > "./Axtel/AxtelDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BELLXXX-[0-9A-F][len8]/BELLDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BigPondXXXXXX-[0-9A-F][len10]/BigPondDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTBusinessHub-XXX-[0-9][len10]/BTDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTHomeHub2-XXXX-[2-9a-f][len10]/BTDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTHomeHub-XXXX-[0-9a-f][len10]/BTDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/BTHomeHub.php > "./BTHomeHub-XXXX-[0-9a-f][len10]/BTDefault$fileext"
cleanlink http://www.gnucitizen.org/blog/default-key-algorithm-in-thomson-and-bt-home-hub-routers/ > "./BTHomeHub-XXXX-[0-9a-f][len10]/BTDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTHub3-XXXX-[2-9a-f][len10]/BTDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTHub4-XXXX-[2-9a-f][len10]/BTDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./BTHub5-XXXX-[2-9a-f][len10]/BTDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/CabovisaoSagemKeygen.cpp > "./CabovisaoSagem/CabovisaoSagemDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ComtrendKeygen.cpp > "./Comtrend/ComtrendDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ConnKeygen.cpp > "./Contattami/ContattamiDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/DiscusKeygen.cpp > "./Discus/DiscusDefault$fileext"
cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/DiscusKeyCalculator.java > "./Discus/DiscusDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./Domino-XXXX-[0-9A-F][len8]/DominoDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./E583X-XXXXX-[0-9A-F][len8]/E583XDefault$fileext"
cleanlink https://github.com/wpatoolkit/Word-word-word-Wordlist-Generator > "./EEBrightBox-XXXXXX-[word-word-word]/EEBrightBoxDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/EircomKeygen.cpp > "./Eircom/EircomDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/Eircom.php > "./Eircom/EircomDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/Fastweb.php >"./Fastweb/FastwebDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/HG824xKeygen.cpp > "./HG824x/HG824xDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/HuaweiKeygen.cpp > "./Huawei/HuaweiDefault$fileext"
cleanlink http://websec.ca/blog/view/mac2wepkey_huawei > "./Huawei/HuaweiDefault$fileext"
cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/HWeiKeyCalculator.java > "./Huawei/HuaweiDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/InfostradaKeygen.cpp > "./Infostrada/InfostradaDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/Infostrada.php > "./Infostrada/InfostradaDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/InterCableKeygen.cpp > "./InterCable/InterCableDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/JAZZTEL.php >"./JAZZTEL/JAZZTELDefault$fileext"
cleanlink https://raw.githubusercontent.com/RobertoEstrada/WLANAudit-Android/master/WLANAudit/src/main/java/es/glasspixel/wlanaudit/keyframework/WLANXXXXKeyCalculator.java > "./JAZZTEL/JAZZTELDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/MaxcomKeygen.cpp > "./Maxcom/MaxcomDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/MegaredKeygen.cpp > "./Megared/MegaredDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/MeoPirelliKeygen.cpp > "./MeoPirelli/MeoPirelliDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./MGTS_GPON_XXXX-[0-9a-f][len8]/MGTSDefault$fileext"
cleanlink https://github.com/wpatoolkit/Adj-Noun-Wordlist-Generator > "./NETGEARXX-[adj+noun+3digs]/NetgearDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/OnoKeygen.cpp > "./ONOXXXX-[0-9][len10]/OnoDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./Orange-[0-9a-f][len8] or [0-9A-F][len12]/OrangeDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./Orange-XXXX-[2345679ACEF][len8]/OrangeDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/OteKeygen.cpp > "./Ote/OteDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/OteBAUDKeygen.cpp > "./OteBAUD/OteBAUDDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/OteHuaweiKeygen.cpp > "./OteHuawei/OteHuaweiDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/PBSKeygen.cpp > "./PBS/PBSDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/PirelliKeygen.cpp > "./Pirelli/PirelliDefault$fileext"
cleanlink https://packetstormsecurity.com/files/131834/Pirelli-Router-P.DG-A4001N-WPA-Key-Reverse-Engineering-Rev-2.html > "./Pirelli/PirelliDefault$fileext"
cleanlink http://ednolo.alumnos.upv.es/?p=1883 > "./Pirelli/PirelliDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./PlusnetWireless-XXXXXX-[0-9A-F][len10]/PlusnetWirelessDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./PRIMEHOME-XX-[0-9a-f][len8]/PRIMEHOMEDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/PtvKeygen.cpp > "./Ptv/PtvDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/SitecomKeygen.cpp > "./Sitecom/SitecomDefault$fileext"
cleanlink https://github.com/wpatoolkit/Upper-Alpha-Keyspace-Reducer >"./SKYXXXXX-[A-Z][len8]/SkyDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/SkyV1Keygen.cpp > "./SKYXXXXX-[A-Z][len8]/SkyDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/Speedport500Keygen.cpp > "./Speedport500/Speedport500Default$fileext"
cleanlink http://wpacalculator.altervista.org/XL/Technicolor.php >"./Technicolor-[0-9A-F][len10]/TechnicolorDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./Technicolor-[0-9A-F][len10]/TechnicolorDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/TecomKeygen.cpp > "./Tecom/TecomDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/TeletuKeygen.cpp > "./Tele2Tu/Tele2TuDefault$fileext"
cleanlink http://wpacalculator.altervista.org/XL/Tele2.php > "./Tele2Tu/Tele2TuDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/TelseyKeygen.cpp > "./Telsey/TelseyDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./TELUSXXXX-[0-9a-f][len10]/TELUSDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./TelstraXXXXXX-[0-9A-F][len10]/TelstraDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ThomsonKeygen.cpp > "./ThomsonXXXXXX-[0-9A-F][len10]/ThomsonDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./ThomsonXXXXXX-[0-9A-F][len10]/ThomsonDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./TNCAPXXXXXX-[0-9A-F][len10]/TNCAPDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/TplinkKeygen.cpp > "./TP-LINK_XXXXXX-[0-9A-F][len8]/TPLinkDefault$fileext"
cleanlink http://www.backtrack-linux.org/forums/showthread.php?t=62673 > "./TP-LINK_XXXXXX-[0-9A-F][len8]/TPLinkDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./TP-LINK_XXXXXX-[0-9A-F][len8]/TPLinkDefault$fileext"
cleanlink https://github.com/wpatoolkit/Upper-Alpha-Keyspace-Reducer >"./UPCXXXXXXX-[A-Z][len8]/UPCDefault$fileext"
cleanlink https://raw.githubusercontent.com/sporkbomb/wifi-opener/master/upc/upc0wn.sh > "./UPCXXXXXXX-[A-Z][len8]/UPCDefault$fileext"
cleanlink https://github.com/wpatoolkit/Lower-Alpha-Keyspace-Reducer >"./virginmediaXXXXXXX-[abcdefghjklmnpqrstuvwxyz][len8]/VirginDefault$fileext"
cleanlink https://github.com/wpatoolkit/Lower-Alpha-Keyspace-Reducer >"./VMXXXXXX-2G-[abcdefghjklmnpqrstuvwxyz][len8]/VirginDefault$fileext"
cleanlink https://github.com/wpatoolkit/Lower-Alpha-Keyspace-Reducer >"./VMXXXXXX-5G-[abcdefghjklmnpqrstuvwxyz][len8]/VirginDefault$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/WifimediaRKeygen.cpp > "./WifimediaR/WifimediaRDefault$fileext"
cleanlink https://github.com/wpatoolkit/10-Hex-Generator > "./WLAN1-XXXXXX-[0-9A-F][len10]/WLAN1Default$fileext"
cleanlink https://raw.githubusercontent.com/routerkeygen/routerkeygenPC/master/src/algorithms/ZyxelKeygen.cpp > "./ZyXELXXXXXX-[0-9A-Z][len13]/ZyXELDefault$fileext"
# END