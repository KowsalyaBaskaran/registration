

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
                <title>Registration page</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/menu_topside.css" />
                 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="js/jquery-ui.js"></script>
	
               

                
                
                
                <style>
            #text
{
float:none;
width:200px;
height:30px;
}
#textbox
{
    width:200px;
    height: 37px;
}
#tags{
    
    width:200px;
    height: 37px;
    
}
/*CSS for dropdown box*/
select
{
width: 200px;
height: 29px;
border-radius: 3px;
border: 1px solid #CCC;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}
select:hover
{
width: 200px;
height: 29px;
border-radius: 3px;
border: 1px solid #CCC;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}



input[type='submit']
{
width: 150px;
height: 34px;
border: 2px solid white;
background-color:#CCC;
}
input[type='submit']:hover
{
width: 150px;
height: 34px;
border: 2px solid white;
background-color:#000000;
color:#fff;
}
input[type='reset']
{
width: 150px;
height: 34px;
border: 2px solid white;
background-color:#CCC;
}
input[type='reset']:hover
{
width: 150px;
height: 34px;
border: 2px solid white;
background-color:#000000;
color:#fff;
}
input[type='text'], input[type='password']
{
width: 200px;
height: 29px;
border-radius: 3px;
border: 1px solid #CCC;
padding: 8px;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}

input[type='text']:hover, input[type='password']:hover
{
width: 200px;
height: 29px;
border-radius: 3px;
border: 1px solid #aaa;
padding: 8px;
font-weight: 200;
font-size: 15px;
font-family: Verdana;
box-shadow: 1px 1px 5px #CCC;
}
#er
{
font-size:40px;
}
.dark
{
color:red;
}




	
      
        </style>
   <script>  
$(function() {
    var availableTags = [
      "UNIVERSITY COLLEGE OF ENGINEERING, ARIYALUR ","ARIYALUR ENGINEERING COLLEGE ","NELLIANDAVAR INSTITUTE OF TECHNOLOGY ","K.K.C COLLEGE OF ENGINEERING AND TECHNOLOGY ","MEENAKSHI RAMASWAMY ENGINEERING COLLEGE ","UNIVERSITY DEPARTMENTS OF ANNA UNIVERSITY CEG CAMPUS ","UNIVERSITY DEPARTMENTS OF ANNA UNIVERSITY  ACT CAMPUS ","UNIVERSITY DEPARTMENTS OF ANNA UNIVERSITY, CHENNAI - SAP CAMPUS ","MEASI ACADEMY OF ARCHITECTURE "," MEENAKSHI SUNDARARAJAN ENGINEERING COLLEGE "," CENTRAL INSTITUTE OF PLASTICS ENGINEERING AND TECHNOLOGY ","JAWAHAR ENGINEERING COLLEGE ","LOYOLA - ICAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","MEENAKSHI COLLEGE OF ENGINEERING ",
      "GOVERNMENT COLLEGE OF TECHNOLOGY","P.S.G. COLLEGE OF TECHNOLOGY","COIMBATORE INSTITUTE OF TECHNOLOGY","RATHINAM TECHNICAL CAMPUS ","ASIAN COLLEGE OF ENGINEERING AND TECHNOLOGY","SRI RANGANATHAR INSTITUTE OF ENGINEERING & TECHNOLOGY ","DHAANISH AHMED INSTITUTE OF TECHNOLOGY ","N R SCHOOL OF ARCHITECTURE ","POLLACHI INSTITUTE OF ENGINEERING AND TECHNOLOGY ","V S B COLLEGE OF ENGINEERING TECHNICAL CAMPUS ","NIGHTINGALE INSTITUTE OF TECHNOLOGY ","SUGUNA COLLEGE OF ENGINEERING ","SASI CREATIVE SCHOOL OF ARCHITECTURE ","SCHOOL OF ARCHITECTURE COIMBATORE INSTITUTE OF ENGINEERING AND TECHNOLOGY","ARJUN COLLEGE OF TECHNOLOGY ",
       "VISHNU LAKSHMI COLLEGE OF ENGINEERING AND TECHNOLOGY ","CAPITAL COLLEGE OF ARCHITECTURE ","PARK INSTITUTE OF ARCHITECTURE ","PSG INSTITUTE OF TECHNOLOGY AND APPLIED RESEARCH ","A S L  PAULS COLLEGE OF ENGINEERING AND TECHNOLOGY ","CHRIST THE KING ENGINEERING COLLEGE ","S V S COLLEGE OF ENGINEERING ","SREE SAKTHI ENGINEERING COLLEGE ","COIMBATORE INSTITUTE OF ENGINEERING AND TECHNOLOGY ","DR. MAHALINGAM COLLEGE OF ENGINEERING & TECHNOLOGY  ","HINDUSTHAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","KARPAGAM COLLEGE OF ENGINEERING","KUMARAGURU COLLEGE OF TECHNOLOGY","MAHARAJA ENGINEERING COLLEGE ","PARK COLLEGE OF ENGINEERING AND TECHNOLOGY ",
         "SRI KRISHNA COLLEGE OF ENGINEERING & TECHNOLOGY","SRI RAMAKRISHNA ENGINEERING COLLEGE","TAMILNADU COLLEGE OF ENGINEERING ","SRI KRISHNA COLLEGE OF TECHNOLOGY","MAHARAJA PRITHVI ENGINEERING COLLEGE ","SRI RAMAKRISHNA INSTITUTE OF TECHNOLOGY ","SNS COLLEGE OF TECHNOLOGY"," SRI SHAKTHI INSTITUTE OF ENGINEERING AND TECHNOLOGY ","TAMILNADU SCHOOL OF ARCHITECTURE ","NEHRU INSTITUTE OF ENGINEERING AND TECHNOLOGY ","MAHARAJA INSTITUTE OF TECHNOLOGY "," R V S COLLEGE OF ENGINEERING AND TECHNOLOGY ","INFO INSTITUTE OF ENGINEERING ","S N S COLLEGE OF ENGINEERING ","KARPAGAM INSTITUTE OF TECHNOLOGY ",
         "DR.N G P INSTITUTE OF TECHNOLOGY ","RANGANATHAN ENGINEERING COLLEGE ","SASURIE ACADEMY OF ENGINEERING ","SRI ESHWAR COLLEGE OF ENGINEERING ","HINDUSTHAN INSTITUTE OF TECHNOLOGY ","P A COLLEGE OF ENGINEERING AND TECHNOLOGY "," DHANALAKSHMI SRINIVASAN COLLEGE OF ENGINEERING ","ADITHYA INSTITUTE OF TECHNOLOGY "," KATHIR COLLEGE OF ENGINEERING ","KTVR KNOWLEDGE PARK FOR ENGINEERING AND TECHNOLOGY ","EASA COLLEGE OF ENGINEERING AND TECHNOLOGY ","KIT - KALAIGNAR KARUNANIDHI INSTITUTE OF TECHNOLOGY ","KGISL INSTITUTE OF TECHNOLOGY ","PPG INSTITUTE OF TECHNOLOGY ","NEHRU INSTITUTE OF TECHNOLOGY ",    
         "INDUS COLLEGE OF ENGINEERING ","TEJAA SHAKTHI INSTITUTE OF TECHNOLOGY FOR WOMEN ","UNITED INSTITUTE OF TECHNOLOGY "," JANSONS INSTITUTE OF TECHNOLOGY ","AKSHAYA COLLEGE OF ENGINEERING & TECHNOLOGY "," K P R INSTITUTE OF ENGINEERING AND TECHNOLOGY "," SRIGURU INSTITUTE OF TECHNOLOGY ","PARK COLLEGE OF TECHNOLOGY "," J C T COLLEGE OF ENGINEERING AND TECHNOLOGY ","KALAIVANI COLLEGE OF TECHNOLOGY ","C M S COLLEGE OF ENGINEERING AND TECHNOLOGY ","PRAHAR SCHOOL OF ARCHITECTURE ","RVS TECHNICAL CAMPUS","R.V.S. SCHOOL OF ARCHITECTURE ","RANGANATHAN ARCHITECTURE COLLEGE ",
         " V S SCHOOL OF ARCHITECTURE ","UNIVERSITY COLLEGE OF ENGINEERING, PANRUTI ","KRISHNASAMY COLLEGE OF ENGINEERING AND TECHNOLOGY ","C.K. COLLEGE OF ENGINEERING AND TECHNOLOGY ","C K COLLEGE OF ENGINEERING AND TECHNOLOGY ","M R K INSTITUTE OF TECHNOLOGY ","St ANNE'S COLLEGE OF ENGINEERING AND TECHNOLOGY ","GOVERNMENT COLLEGE OF ENGINEERING - DHARMAPURI ","JAYAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","SAPTHAGIRI COLLEGE OF ENGINEERING ","JAYALAKSHMI INSTITUTE OF TECHNOLOGY ","VARUVAN VADIVELAN INSTITUTE OF TECHNOLOGY ","SHREENIVASA ENGINEERING COLLEGE ","UNIVERSITY COLLEGE OF ENGINEERING, DINDIGUL ","SSM INSTITUTE OF ENGINEERING AND TECHNOLOGY ",
          "JAINEE COLLEGE OF ENGINEERING AND TECHNOLOGY","J K COLLEGE OF ARCHITECTURE ","ARINGER ANNA COLLEGE OF ENGINEERING AND TECHNOLOGY ","CHRISTIAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI SUBRAMANYA COLLEGE OF ENGINEERING AND TECHNOLOGY ","N P R COLLEGE OF ENGINEERING AND TECHNOLOGY ","VEERAMMAL ENGINEERING COLLEGE ","R V S SCHOOL OF ENGINEERING AND TECHNOLOGY ","R V S  SCHOOL OF ARCHITECTURE ","PSNA COLLEGE OF ENGINEERING AND TECHNOLOGY ","R V S  COLLEGE OF ENGINEERING ","SBM COLLEGE OF ENGINEERING AND TECHNOLOGY ","SBM COLLEGE OF ENGINEERING AND TECHNOLOGY ","VIDHYA MANDHIR INSTITUTE OF TECHNOLOGY ","J K K MUNIRAJAH SCHOOL OF ARCHITECTURE ",
          "AL AMEEN ENGINEERING COLLEGE ","BANNARI AMMAN INSTITUTE OF TECHNOLOGY "," ERODE SENGUNTHAR ENGINEERING COLLEGE ","INSTITUTE OF ROAD AND TRANSPORT TECHNOLOGY ","KONGU ENGINEERING COLLEGE","M P NACHIMUTHU M  JAGANATHAN ENGINEERING COLLEGE ","NANDHA ENGINEERING COLLEGE","VELALAR COLLEGE OF ENGINEERING AND TECHNOLOGY ","MAHARAJA ENGINEERING COLLEGE FOR WOMEN ","SHREE VENKATESHWARA HI-TECH ENGINEERING COLLEGE ","SURYA ENGINEERING COLLEGE ","NANDHA COLLEGE OF TECHNOLOGY ","J K K MUNIRAJAH COLLEGE OF TECHNOLOGY ","UNIVERSITY DEPARTMENTS OF ANNA UNIVERSITY MIT CAMPUS ","UNIVERSITY COLLEGE OF ENGINEERING",
           " PALLAVA RAJA COLLEGE OF ENGINEERING ","MARG INSTITUTE OF DESIGN & ARCHITECTURE SWARNABHOOMI(MIDAS) ","RAJALAKSHMI SCHOOL OF ARCHITECTURE ","ANNAI VEILANKANNI'S COLLEGE OF ENGINEERING ","DA VINCI SCHOOL OF DESIGN AND ARCHITECTURE ","JEPPIAAR INSTITUTE OF TECHNOLOGY ","ANAND SCHOOL OF ARCHITECTURE ","MISRIMAL NAVAJEE MUNOTH JAIN SCHOOL OF ARCHITECTURE "," St  JOSEPH'S INSTITUTE OF TECHNOLOGY ","ARIGNAR ANNA INSTITUTE OF SCIENCE AND TECHNOLOGY "," D M I COLLEGE OF ENGINEERING ","KALSAR COLLEGE OF ENGINEERING ","LORD VENKATESHWARAA ENGINEERING COLLEGE ","MAAMALLAN INSTITUTE OF TECHNOLOGY ","KINGS ENGINEERING COLLEGE ",
       "KANCHI PALLAVAN ENGINEERING COLLEGE ","PALLAVAN COLLEGE OF ENGINEERING ","RAJALAKSHMI ENGINEERING COLLEGE ","RAJIV GANDHI COLLEGE OF ENGINEERING ","SAKTHI MARIAMMAN ENGINEERING COLLEGE ","SAVEETHA ENGINEERING COLLEGE ","SRI MUTHUKUMARAN INSTITUTE OF TECHNOLOGY ","SRI VENKATESWARA COLLEGE OF ENGINEERING "," P.B. COLLEGE OF ENGINEERING ","LOYOLA INSTITUTE OF TECHNOLOGY ","P.T. LEE CHENGALVARAYA NAICKER COLLEGE OF ENGINEERING AND TECHNOLOGY ","APOLLO ENGINEERING COLLEGE ","ARM COLLEGE OF ENGINEERING AND TECHNOLOGY ","ADHI COLLEGE OF ENGINEERING AND TECHNOLOGY ","INDIRA GANDHI COLLEGE OF ENGINEERING AND TECHNOLOGY FOR WOMEN ",
            "J E I MATHAAJEE COLLEGE OF ENGINEERING ","MADHA INSTITUTE OF ENGINEERING AND TECHNOLOGY ","MOHAMED SATHAK A.J.COLLEGE OF ENGINEERING ","ANAND INSTITUTE OF HIGHER TECHNOLOGY ","JEPPIAAR ENGINEERING COLLEGE ","JERUSALEM COLLEGE OF ENGINEERING ","MISRIMAL NAVAJEE MUNOTH JAIN ENGINEERING COLLEGE ","K.C.G. COLLEGE OF TECHNOLOGY ","SHREE MOTILAL KANHAIYALAL FOMRA INSTITUTE OF TECHNOLOGY ","SRI SIVASUBRAMANIYA NADAR COLLEGE OF ENGINEERING ","AGNI COLLEGE OF TECHNOLOGY ","St.JOSEPH'S COLLEGE OF ENGINEERING "," T.J. INSTITUTE OF TECHNOLOGY ","THANGAVELU ENGINEERING COLLEGE ","S.R.R. ENGINEERING COLLEGE ",
         "DHANALAKSHMI SRINIVASAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","A.C.T. COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI SAI RAM INSTITUTE OF TECHNOLOGY ","St. JOSEPH COLLEGE OF ENGINEERING ","THE NEW ROYAL COLLEGE OF ENGINEERING AND TECHNOLOGY ","AKSHEYAA COLLEGE OF ENGINEERING ","VI INSTITUTE OF TECHNOLOGY","ARS COLLEGE OF ENGINEERING ","SRI KRISHNA INSTITUTE OF TECHNOLOGY ","CHENNAI INSTITUTE OF TECHNOLOGY ","MOHAMED SATHAK A.J. ACADEMY OF ARCHITECTURE ","ADHIPARASAKTHI ENGINEERING COLLEGE ","DHANALAKSHMI COLLEGE OF ENGINEERING ","G K M  COLLEGE OF ENGINEERING AND TECHNOLOGY ","KARPAGA VINAYAGA COLLEGE OF ENGINEERING AND TECHNOLOGY ",
        "MADHA ENGINEERING COLLEGE ","SRI VENKATESWARAA COLLEGE OF TECHNOLOGY ","PRINCE SHRI VENKATESHWARA PADMAVATHY ENGINEERING COLLEGE ","SHRI ANDAL ALAGAR COLLEGE OF ENGINEERING ","SRI LAKSHMI AMMAL ENGINEERING COLLEGE ","SRI SAIRAM ENGINEERING COLLEGE ","TAGORE ENGINEERING COLLEGE ","VALLIAMMAI ENGINEERING COLLEGE ","ASAN MEMORIAL COLLEGE OF ENGINEERING AND TECHNOLOGY ","DHAANISH AHMED COLLEGE OF ENGINEERING ","SRI RAMANUJAR ENGINEERING COLLEGE "," SRI KRISHNA ENGINEERING COLLEGE ","GOPAL RAMALINGAM MEMORIAL ENGINEERING COLLEGE ","NEW PRINCE SHRI BHAVANI COLLEGE OF ENGINEERING AND TECHNOLOGY ","BALAJI INSTITUTE OF ENGINEERING AND TECHNOLOGY ",
        "RRASE COLLEGE OF ENGINEERING ","PRINCE Dr.K.VASUDEVAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","LORD AYYAPPA INSTITUTE OF ENGINEERING AND TECHNOLOGY ","CHENDU COLLEGE OF ENGINEERING AND TECHNOLOGY ","PERI INSTITUTE OF TECHNOLOGY ","APOLLO PRIYADARSHANAM INSTITUTE OF TECHNOLOGY ","THIRUMALAI ENGINEERING COLLEGE ","UNIVERSITY COLLEGE OF ENGINEERING, NAGERCOIL ","ROHINI COLLEGE OF ENGINEERING AND TECHNOLOGY ","SIGMA COLLEGE OF ARCHITECTURE "," STELLA MARY'S COLLEGE OF ENGINEERING ","LOURDES MOUNT COLLEGE OF ENGINEERING AND TECHNOLOGY ","NARAYANAGURU SIDDHARTHA COLLEGE OF ENGINEERING ","MARIA COLLEGE OF ENGINEERING AND TECHNOLOGY ","MAR EPHRAEM COLLEGE OF ENGINEERING AND TECHNOLOGY ",
            "M.E.T ENGINEERING COLLEGE ","IMMANUEL ARASAR J J COLLEGE OF ENGINEERING ","SIVAJI COLLEGE OF ENGINEERING AND TECHNOLOGY "," SATYAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","ARUNACHALA COLLEGE OF ENGINEERING FOR WOMEN ","VINS CHRISTIAN WOMEN'S COLLEGE OF ENGINEERING ","DMI ENGINEERING COLLEGE ","RAJAS INTERNATIONAL INSTITUTE OF TECHNOLOGY FOR WOMEN ","TAMIZHAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","C.S.I. INSTITUTE OF TECHNOLOGY ","JAYAMATHA ENGINEERING COLLEGE ","St.XAVIER'S CATHOLIC COLLEGE OF ENGINEERING ","SUN COLLEGE OF ENGINEERING AND TECHNOLOGY ","NARAYANAGURU COLLEGE OF ENGINEERING ","UDAYA SCHOOL OF ENGINEERING ",
          "PONJESLY COLLEGE OF ENGINEERING ","VINS CHRISTIAN COLLEGE OF ENGINEERING ","LORD JEGANNATH COLLEGE OF ENGINEERING AND TECHNOLOGY ","MARTHANDAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","K N S K COLLEGE OF ENGINEERING ","JAMES COLLEGE OF ENGINEERING AND TECHNOLOGY ","BETHLAHEM INSTITUTE OF ENGINEERING ","LOYOLA INSTITUTE OF TECHNOLOGY AND SCIENCE ","ANNAI VAILANKANNI COLLEGE OF ENGINEERING ","N S N COLLEGE OF ENGINEERING AND TECHNOLOGY "," CHERAN COLLEGE OF ENGINEERING ","ARULMURUGAN COLLEGE OF ENGINEERING ","CHERAN SCHOOL OF ARCHITECTURE ","M KUMARASAMY COLLEGE OF ENGINEERING ","V S B ENGINEERING COLLEGE ",
           "CHETTINAD COLLEGE OF ENGINEERING AND TECHNOLOGY "," KARUR COLLEGE OF ENGINEERING ","V K S COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI VENKATESHWARA INSTITUTE OF ENGINEERING ","HOSUR INSTITUTE OF TECHNOLOGY AND SCIENCE ","ADHIYAMAAN COLLEGE OF ENGINEERING ","GOVERNMENT COLLEGE OF ENGINEERING - BARGUR ","ER.PERUMAL MANIMEKALAI COLLEGE OF ENGINEERING ","P.S.V.COLLEGE OF ENGINEERING AND TECHNOLOGY ","ARCHANA INSTITUTE OF TECHNOLOGY ","THIAGARAJAR COLLEGE OF ENGINEERING","C R  ENGINEERING COLLEGE ","VAIGAI COLLEGE OF ENGINEERING ","MANGAYARKARASI COLLEGE OF ENGINEERING "," DHAYA COLLEGE OF ENGINEERING ",
            "P.T.R.COLLEGE OF ENGINEERING AND TECHNOLOGY ","RAJA COLLEGE OF ENGINEERING AND TECHNOLOGY ","SACS M.A.V.M.M ENGINEERING COLLEGE ","VICKRAM COLLEGE OF ENGINEERING ","FATIMA MICHAEL COLLEGE OF ENGINEERING AND TECHNOLOGY ","ULTRA COLLEGE OF ENGINEERING AND TECHNOLOGY FOR WOMEN ","VELAMMAL COLLEGE OF ENGINEERING AND TECHNOLOGY ","LATHA MATHAVAN ENGINEERING COLLEGE ","UNIVERSITY COLLEGE OF ENGINEERING, THIRUKKUVALAI ","PRIME COLLEGE OF ARCHITECTURE AND PLANNING ","HAJI SHEIK ISMAIL ENGINEERING COLLEGE ","SIR ISSAC NEWTON COLLEGE OF ENGINEERING AND TECHNOLOGY ","A.V.C COLLEGE OF ENGINEERING ","E.G.S.PILLAY ENGINEERING COLLEGE ","SEMBODAI RUKMANI VARATHARAJAN ENGINEERING COLLEGE ",
             "MUTHAYAMMAL COLLEGE OF ENGINEERING ","K S R INSTITUTE FOR ENGINEERING AND TECHNOLOGY ","ANNAI MATHAMMAL SHEELA ENGINEERING COLLEGE ","K S RANGASAMY COLLEGE OF TECHNOLOGY","MAHENDRA ENGINEERING COLLEGE","MUTHAYAMMAL ENGINEERING COLLEGE ","PAAVAI ENGINEERING COLLEGE","P G P COLLEGE OF ENGINEERING AND TECHNOLOGY ","K S R COLLEGE OF ENGINEERING"," S S M COLLEGE OF ENGINEERING ","SENGUNTHAR ENGINEERING COLLEGE "," PAAVAAI GROUP OF INSTITUTIONS ","VIVEKANANDHA COLLEGE OF ENGINEERING FOR WOMEN ","GNANAMANI COLLEGE OF TECHNOLOGY ","VIVEKANANDHA INSTITUTE OF ENGINEERING & TECHNOLOGY FOR WOMEN ",
           "SELVAM COLLEGE OF TECHNOLOGY ","PAAVAI COLLEGE OF ENGINEERING ","SENGUNTHAR COLLEGE OF ENGINEERING ","KING COLLEGE OF TECHNOLOGY","MAHENDRA INSTITUTE OF TECHNOLOGY ","VIDYAA VIKAS COLLEGE OF ENGINEERING AND TECHNOLOGY ","EXCEL ENGINEERING COLLEGE ","CMS COLLEGE OF ENGINEERING ","EXCEL COLLEGE OF TECHNOLOGY ","MAHENDRA ENGINEERING COLLEGE FOR WOMEN ","J K K  NATTRAJA COLLEGE OF ENGINEERING AND TECHNOLOGY ","PAVAI COLLEGE OF TECHNOLOGY",
          "GNANAMANI COLLEGE OF ENGINEERING ","VIVEKANANDHA COLLEGE OF TECHNOLOGY FOR WOMEN ","DR NAGARATHINAM'S COLLEGE OF ENGINEERING ","EXCEL COLLEGE OF ENGINEERING AND TECHNOLOGY ","MAHENDRA INSTITUTE OF ENGINEERING AND TECHNOLOGY ","EXCEL COLLEGE OF ARCHITECTURE AND PLANNING ","SRG ENGINEERING COLLEGE ","SRI RAMAKRISHNA COLLEGE OF ENGINEERING ","DHANALAKSHMI SRINIVASAN COLLEGE OF ENGINEERING ","DHANALAKSHMI SRINIVASAN INSTITUTE OF RESEARCH AND TECHNOLOGY ","ELIZABETH COLLEGE OF ENGINEERING AND TECHNOLOGY ","DHANALAKSHMI SRINIVASAN ENGINEERING COLLEGE ","ROEVER ENGINEERING COLLEGE ","SRINIVASAN ENGINEERING COLLEGE ","ROEVER COLLEGE OF ENGINEERING AND TECHNOLOGY ",
              "MOOKAMBIGAI COLLEGE OF ENGINEERING ","MOTHER TERASA COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI BHARATHI ENGINEERING COLLEGE FOR WOMEN ","MAHATH AMMA INSTITUTE OF ENGINEERING AND TECHNOLOGY","KINGS COLLEGE OF ENGINEERING ","MOUNT ZION COLLEGE OF ENGINEERING AND TECHNOLOGY ","SHANMUGANATHAN ENGINEERING COLLEGE ","SUDHARSAN ENGINEERING COLLEGE ","MNSK COLLEGE OF ENGINEERING ","M.A.R. COLLEGE OF ENGINEERING AND TECHNOLOGY ","CHENDHURAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","UNIVERSITY COLLEGE OF ENGINEERING, RAMANATHAPURAM ","MOHAMED SATHAK ENGINEERING COLLEGE ","SYED AMMAL ENGINEERING COLLEGE ","GANAPATHY CHETTIAR COLLEGE OF ENGINEERING AND TECHNOLOGY ",
       "SRI SHANMUGHA COLLEGE OF ENGINEERING AND TECHNOLOGY ","GANESH COLLEGE OF ENGINEERING ","INDIAN INSTITUTE OF HANDLOOM TECHNOLOGY "," DHIRAJLAL GANDHI COLLEGE OF TECHNOLOGY ","SHREE SATHYAM COLLEGE OF ENGINEERING AND TECHNOLOGY","AVS COLLEGE OF TECHNOLOGY ","SKANDHA SCHOOL OF ARCHITECTURE ","GOVERNMENT COLLEGE OF ENGINEERING","SONA COLLEGE OF TECHNOLOGY","MAHENDRA COLLEGE OF ENGINEERING ","THE KAVERY ENGINEERING COLLEGE ","A V S ENGINEERING COLLEGE","NARASU'S SARATHY INSTITUTE OF TECHNOLOGY ","BHARATHIYAR INSTITUTE OF ENGINEERING FOR WOMEN","GREENTECH COLLEGE OF ENGINEERING FOR WOMEN ",
       "TAGORE INSTITUTE OF ENGINEERING AND TECHNOLOGY ","ANNAPOORANA ENGINEERING COLLEGE ","KNOWLEDGE INSTITUTE OF TECHNOLOGY ","V S A EDUCATIONAL AND CHARITABLE TRUST'S GROUP OF INSTITUTIONS ","SALEM COLLEGE OF ENGINEERING AND TECHNOLOGY ","S R S COLLEGE OF ENGINEERING AND TECHNOLOGY ","THE KAVERY COLLEGE OF ENGINEERING","CENTRAL ELECTROCHEMICAL RESEARCH INSTITUTE"," SRI RAAJA RAAJAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","KIT & KIM TECHNICAL CAMPUS ","MADURAI INSTITUTE OF ENGINEERING AND TECHNOLOGY ","A.C.COLLEGE OF ENGINEERING AND TECHNOLOGY ","K L N COLLEGE OF INFORMATION TECHNOLOGY ","K L N.COLLEGE OF ENGINEERING ","PANDIAN SARASWATHI YADAV ENGINEERING COLLEGE ",
        "PANNAI COLLEGE OF ENGINEERING AND TECHNOLOGY ","St MICHAEL COLLEGE OF ENGINEERING & TECHNOLOGY ","UNIVERSITY COLLEGE OF ENGINEERING","SMR EAST COAST COLLEGE OF ENGINEERING AND TECHNOLOGY ","K.S.K COLLEGE OF ENGINEERING AND TECHNOLOGY ","GOVERNMENT COLLEGE OF ENGINEERING ","STAR LION COLLEGE OF ENGINEERING AND TECHNOLOGY ","ARASU ENGINEERING COLLEGE","P R ENGINEERING COLLEGE ","PONNAIYAH RAMAJAYAM COLLEGE OF ENGINEERING AND TECHNOLOGY","St JOSEPH'S COLLEGE OF ENGINEERING AND TECHNOLOGY ","PARISUTHAM INSTITUTE OF TECHNOLOGY AND SCIENCE ","VANDAYAR ENGINEERING COLLEGE ","ANNAI COLLEGE OF ENGINEERING AND TECHNOLOGY ","AS SALAM COLLEGE OF ENGINEERING AND TECHNOLOGY ",
        "CSI COLLEGE OF ENGINEERING ","McGAN'S OOTY SCHOOL OF ARCHITECTURE ","GOVERNMENT COLLEGE OF ENGINEERING","VPV COLLEGE OF ENGINEERING ","NADAR SARASWATHI COLLEGE OF ENGINEERING & TECHNOLOGY ","BHARATH NIKETAN ENGINEERING COLLEGE ","ODAIYAPPA COLLEGE OF ENGINEERING AND TECHNOLOGY ","THENI KAMMAVAR SANGAM COLLEGE OF TECHNOLOGY "," THAMIRABHARANI ENGINEERING COLLEGE ","UNIVERSAL COLLEGE OF ENGINEERING & TECHNOLOGY","SCAD ENGINEERING COLLEGE "," A.R. COLLEGE OF ENGINEERING AND TECHNOLOGY ","PSN INSTITUTE OF TECHNOLOGY AND SCIENCE ","CAPE INSTITUTE OF TECHNOLOGY ","FRANCIS XAVIER ENGINEERING COLLEGE",
        "JOE SURESH ENGINEERING COLLEGE ","NATIONAL COLLEGE OF ENGINEERING ","PSN COLLEGE OF ENGINEERING AND TECHNOLOGY","PET ENGINEERING COLLEGE ","S.VEERASAMY CHETTIAR COLLEGE OF ENGINEERING AND TECHNOLOGY","SARDAR RAJA COLLEGE OF ENGINEERING","SCAD COLLEGE OF ENGINEERING AND TECHNOLOGY","RAJAS ENGINEERING COLLEGE ","GOVERNMENT COLLEGE OF ENGINEERING","EINSTEIN COLLEGE OF ENGINEERING ","PSN ENGINEERING COLLEGE","J P COLLEGE OF ENGINEERING ","MAHAKAVI BHARATHIYAR COLLEGE OF ENGINEERING AND TECHNOLOGY ","AALIM MUHAMMED SALEGH COLLEGE OF ENGINEERING ","BHAJARANG ENGINEERING COLLEGE",
           "JAYA ENGINEERING COLLEGE ","JAYA INSTITUTE OF TECHNOLOGY ","MAGNA COLLEGE OF ENGINEERING ","PRATHYUSHA INSTITUTE OF TECHNOLOGY AND MANAGEMENT ","R.M.D. ENGINEERING COLLEGE "," R.M.K. ENGINEERING COLLEGE ","S.A. ENGINEERING COLLEGE ","SRIRAM ENGINEERING COLLEGE "," SRI VENKATESWARA COLLEGE OF ENGINEERING AND TECHNOLOGY ","VEL TECH MULTI TECH DR.RANGARAJAN DR.SAKUNTHALA ENGINEERING COLLEGE ","VELAMMAL ENGINEERING COLLEGE "," SRI VENKATESWARA INSTITUTE OF SCIENCE AND TECHNOLOGY ","VEL TECH HIGH TECH DR.RANGARAJAN DR.SAKUNTHALA ENGINEERING COLLEGE ","GOJAN SCHOOL OF BUSINESS AND TECHNOLOGY","SAMS COLLEGE OF ENGINEERING AND TECHNOLOGY ",
           "PMR ENGINEERING COLLEGE ","JNN INSTITUTE OF ENGINEERING ","St PETER'S COLLEGE OF ENGINEERING AND TECHNOLOGY","R M K COLLEGE OF ENGINEERING AND TECHNOLOGY ","VEL TECH ","AALIM MUHAMMED SALEGH ACADEMY OF ARCHITECTURE "," R.V.S. PADHMAVATHY COLLEGE OF ENGINEERING & TECHNOLOGY ","RVS PADMAVATHY SCHOOL OF ARCHITECTURE ","SRI JAYARAM INSTITUTE OF ENGINEERING AND TECHNOLOGY ","CHENNAI ACADEMY OF ARCHITECTURE AND DESIGN ","PANIMALAR ENGINEERING COLLEGE ","S.K.R. ENGINEERING COLLEGE ","SREE SASTHA INSTITUTE OF ENGINEERING AND TECHNOLOGY ","SREE SASTHA INSTITUTE OF ENGINEERING AND TECHNOLOGY ","JAYA COLLEGE OF ENGINEERING AND TECHNOLOGY ",
           "ALPHA COLLEGE OF ENGINEERING ","INDIRA INSTITUTE OF ENGINEERING AND TECHNOLOGY "," PANIMALAR INSTITUTE OF TECHNOLOGY ","VELAMMAL INSTITUTE OF TECHNOLOGY","GRT INSTITUTE OF ENGINEERING AND TECHNOLOGY ","T.J.S. ENGINEERING COLLEGE ","SREE SASTHA COLLEGE OF ENGINEERING ","JOHN BOSCO ENGINEERING COLLEGE ","EASWARI ENGINEERING COLLEGE ","JAYA SAKTHI ENGINEERING COLLEGE ","RAJALAKSHMI INSTITUTE OF TECHNOLOGY ","JAYA SURIYA ENGINEERING COLLEGE","UNIVERSITY COLLEGE OF ENGINEERING","SRI RENUGAMBAL COLLEGE OF ARCHITECTURE ","S.R.I COLLEGE OF ENGINEERING AND TECHNOLOGY",
             "SRI RAMANA MAHARISHI COLLEGE OF ENGINEERING ","ARULMIGU MEENAKSHI AMMAN COLLEGE OF ENGINEERING ","ARUNAI ENGINEERING COLLEGE ","ARUNAI COLLEGE OF ENGINEERING ","S.K.P. ENGINEERING COLLEGE ","SRI BALAJI CHOCKALINGAM ENGINEERING COLLEGE ","THIRUVALLUVAR COLLEGE OF ENGINEERING AND TECHNOLOGY ","S.K.P. INSTITUTE OF TECHNOLOGY ","ANNAMALAIAR COLLEGE OF ENGINEERING ","KRS COLLEGE OF ENGINEERING ","OXFORD COLLEGE OF ENGINEERING ","ANJALAI AMMAL MAHALINGAM ENGINEERING COLLEGE ","A.R.J COLLEGE OF ENGINEERING AND TECHNOLOGY "," JAIRUPAA COLLEGE OF ENGINEERING ","SCAD INSTITUTE OF TECHNOLOGY ",
             "JAY SHRIRAM GROUP OF INSTITUTIONS ","ERODE BUILDER EDUCATIONAL TRUST'S GROUP OF INSTITUTIONS ","PROFESSIONAL GROUP OF INSTITUTIONS ","SASURIE COLLEGE OF ENGINEERING ","ANGEL COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI RAMANATHAN ENGINEERING COLLEGE ","DR NALLINI INSTITUTE OF ENGINEERING AND TECHNOLOGY ","UNIVERSITY COLLEGE OF ENGINEERING","MAHALAKSHMI ENGINEERING COLLEGE ","RVS KVK SCHOOL OF ARCHITECTURE ","DHANALAKSHMI SRINIVASAN INSTITUTE OF TECHNOLOGY ","SUREYA COLLEGE OF ENGINEERING ","GOVERNMENT COLLEGE OF ENGINEERING","K RAMAKRISHNAN COLLEGE OF TECHNOLOGY ","OAS INSTITUTE OF TECHNOLOGY AND MANAGEMENT","M A M SCHOOL OF ARCHITECTURE ",
             "C A R E SCHOOL OF ARCHITECTURE ","M A M  SCHOOL OF ENGINEERING ","TRP ENGINEERING COLLEGE ","SHRI ANGALAMMAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","J J COLLEGE OF ENGINEERING AND TECHNOLOGY ","JAYARAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","KURINJI COLLEGE OF ENGINEERING AND TECHNOLOGY ","M A M COLLEGE OF ENGINEERING ","M I E T ENGINEERING COLLEGE ","OXFORD ENGINEERING COLLEGE ","PAVENDAR BHARATHIDASAN COLLEGE OF ENGINEERING AND TECHNOLOGY ","SARANATHAN COLLEGE OF ENGINEERING ","TRICHY ENGINEERING COLLEGE","KONGUNADU COLLEGE OF ENGINEERING AND TECHNOLOGY ","CAUVERY COLLEGE OF ENGINEERING AND TECHNOLOGY ","M A M COLLEGE OF ENGINEERING AND TECHNOLOGY ","K RAMAKRISHNAN COLLEGE OF ENGINEERING ",
          "INDRA GANESAN COLLEGE OF ENGINEERING ","C A R E GROUP OF INSTITUTIONS ","SHIVANI ENGINEERING COLLEGE "," IMAYAM COLLEGE OF ENGINEERING ","VETRI VINAYAHA COLLEGE OF ENGINEERING AND TECHNOLOGY ","SHIVANI COLLEGE OF ENGINEERING AND TECHNOLOGY "," PAVENDAR BHARATHIDASAN INSTITUTE OF INFORMATION TECHNOLOGY ","DESIGNED ENVIRONMENT ACADEMY AND RESEARCH INSTITUTE ","UNIVERSITY VOC COLLEGE OF ENGINEERING ","V V COLLEGE OF ENGINEERING ","CHANDY COLLEGE OF ENGINEERING ","St MOTHER THERESA ENGINEERING COLLEGE ","HOLY CROSS ENGINEERING COLLEGE ","UNNAMALAI INSTITUTE OF TECHNOLOGY ","DR.SIVANTHI ADITANAR COLLEGE OF ENGINEERING ","JAYARAJ ANNAPACKIAM CSI COLLEGE OF ENGINEERING ",
           "NATIONAL ENGINEERING COLLEGE","DR G U POPE COLLEGE OF ENGINEERING ","INFANT JESUS COLLEGE OF ENGINEERING ","ANNAI MIRA COLLEGE OF ENGINEERING AND TECHNOLOGY ","SREE KRISHNA COLLEGE OF ENGINEERING ","ADHIPARASAKTHI COLLEGE OF ENGINEERING ","C.ABDUL HAKEEM COLLEGE OF ENGINEERING AND TECHNOLOGY "," G.G.R. COLLEGE OF ENGINEERING ","GANADIPATHY TULSI'S JAIN ENGINEERING COLLEGE","PRIYADARSHINI ENGINEERING COLLEGE ","RANIPPETTAI ENGINEERING COLLEGE ","SRI NANDHANAM COLLEGE OF ENGINEERING AND TECHNOLOGY ","SARASWATHI VELU COLLEGE OF ENGINEERING ","THANTHAI PERIYAR GOVT INSTITUTE OF TECHNOLOGY "," BHARATHIDASAN ENGINEERING COLLEGE ","KINGSTON ENGINEERING COLLEGE ",
               "SHRI SAPTHAGIRI INSTITUTE OF TECHNOLOGY ","GLOBAL INSTITUTE OF ENGINEERING AND TECHNOLOGY ","PODHIGAI COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI KRISHNA COLLEGE OF ENGINEERING ","St JOHN'S COLLEGE OF ENGINEERING ","UNIVERSITY COLLEGE OF ENGINEERING","UNIVERSITY COLLEGE OF ENGINEERING","SURYA SCHOOL OF ARCHITECTURE ","VEDHANTHA INSTITUTE OF TECHNOLOGY"," ANNAI TERESA COLLEGE OF ENGINEERING ","DR PAULS ENGINEERING COLLEGE","IFET COLLEGE OF ENGINEERING ","MAILAM ENGINEERING COLLEGE ","T S M JAIN COLLEGE OF TECHNOLOGY ","V R S COLLEGE OF ENGINEERING AND TECHNOLOGY ","E S ENGINEERING COLLEGE ","MAHA BARATHI ENGINEERING COLLEGE ","SRI ARAVINDAR ENGINEERING COLLEGE ",
           "SURYA GROUP OF INSTITUTIONS ","A.R. ENGINEERING COLLEGE ","A.K.T. MEMORIAL COLLEGE OF ENGINEERING AND TECHNOLOGY ","SRI RANGAPOOPATHI COLLEGE OF ENGINEERING "," SARASWATHY COLLEGE OF ENGINEERING & TECHNOLOGY ","IDHAYA ENGINEERING COLLEGE FOR WOMEN ","RENGANAYAGI VARATHARAJ COLLEGE OF ENGINEERING ","RAMCO INSTITUTE OF TECHNOLOGY","AAA COLLEGE OF ENGINEERING AND TECHNOLOGY ","SETHU INSTITUTE OF TECHNOLOGY "," KAMARAJ COLLEGE OF ENGINEERING AND TECHNOLOGY ","MEPCO SCHLENK ENGINEERING COLLEGE ","P.S.R ENGINEERING COLLEGE ","SREE SOWDAMBIKA COLLEGE OF ENGINEERING ","V.P.MUTHAIAH PILLAI MEENAKSHI AMMAL ENGINEERING COLLEGE FOR WOMEN ",
             "KALASALINGAM INSTITUTE OF TECHNOLOGY ","P.S.R.RENGASAMY COLLEGE OF ENGINEERING FOR WOMEN","SRI VIDYA COLLEGE OF ENGINEERING & TECHNOLOGY ","","","","","","","","","","","","",
        
        ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  });
</script> 
	</head>
	<body>
              <%
 
     String username=(String)session.getAttribute("user");
    if(username!="NULL")
        {}else{
   response.sendRedirect("index.jsp");
        
        }
    
 String error=(String)session.getAttribute("error");
 String id=(String)session.getAttribute("id");

 
%>
		<div class="container">
			<div class="menu-wrap">
				<nav class="menu-top">
                                    <div class="profile"><span>  <%           out.println(username);%></span></div>
					<div class="icon-list">
						
					</div>
				</nav>
				<nav class="menu-side">
                                        <a href="#">Home</a>
					<a href="#">Registration</a>
					<a href="eventlist.html">Event List</a>
					<a href="registeredparticipants.jsp">Registered Users Details</a>
					<a href="../logout.jsp">Logout</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<header class="codrops-header">
						<div class="codrops-links">
						
                                                                     <div style="position: absolute; top: 3%; right: 7%; width: 100px; text-align:right;">
<h2>HI!!<%=username%><h2>
  </div>
                                        
                                           
						</div>
						<h1>Registration </h1>
						<nav class="codrops-demos">
                                                    <form action="../insertp"   method="POST" >
                                                     
 <table><tr><td id="text">Name</td><td><input id="textbox" autocomplete="off" type="text" name="name"  required value="" /></td></tr>
     <td id="text">Year</td><td><select required name="year" id="textbox" value=""/>
             <option>First</option>
             <option>Second</option>
             <option>Third</option>
             <option>Four</option>
         </select></td></tr>
 <tr><td id="text">Department</td><td><input id="textbox"type="text" name="dept" required value="" autocomplete="off"  /></td></tr>
                                          
 <tr><td  class="text">College Name</td><td ><input   id="tags"  type="text" required name="clgname" value="" /></td></tr>
 <tr><td id="text">Gender</td><td><input type="radio" name="gender" value="male" checked="checked" />Male<input type="radio" name="gender" value="female" />Female</td></rr>
 <tr>    <td id="text">Mobile Number</td><td><input autocomplete="off"   type="text"  id="textbox"  required name="mobnum" value="" /></td></tr>
       <tr> <td id="text">Email Id</td><td><input autocomplete="off"  type="text" id="textbox" name="emailid" required value="" /></td></tr>
       <tr><td>Events</td><td><input type="checkbox"  name="paper" value="yes" />Paper
               <input type="checkbox" name="project" value="yes" />Project
               <input type="checkbox" name="lan" value="yes" />Langames </td></tr>
                <tr><td></td><td><input type="checkbox" name="hunt" value="yes" />Treasure
                <input type="checkbox" name="quiz" value="yes" />Quiz
                <input type="checkbox" name="fun" value="yes" />Funcorner</td></tr>
       <tr><td></td><td><input type="checkbox" name="code" value="yes" />Debugging(Hackathon )</td></tr> 
      <tr><td></td><td><input type="checkbox" name="sell" value="yes" />How u sell
              <input type="checkbox" name="photo" value="yes" />Photography     </td></tr> 
     <tr><td></td><td><input type="checkbox" name="googling" value="yes" />Googling(Adzap)
             <input type="checkbox" name="green" value="yes" />Go Green</td></tr>          
     <br>
           <tr><td>Workshop</td><td><input type="checkbox" name="workshop" value="yes" />Ethical Hacking</td></tr>
           <tr><td>Amount</td><td><input type="radio" name="amount" value="100"/>100
           <input type="radio" name="amount" value="150"/>150
           <input type="radio" name="amount" checked="checked" value="200"/>200</td></tr>           
           
   
      
 <tr><td><input type="submit" onclick="ValidateEmail(document.form1.emailid)" /></td><td><input type="reset" name="Reset" /></td></tr>
         <tr><td colspan="2">
                 <div style="color:red;font-size: 28">   <%   if(id!=null){%>
     
        
        
        
        
        
        
        <script> alert("Zerone id <%=id%>");</script>
    <%session.removeAttribute("id");}%></div>
     <% if(error!=null){%>
     
       <script> alert("Zerone id <%=error%>");
     
  <%   session.removeAttribute("error");}
     %>
                 
               
     </td></tr>
 </table>
                                                    </form>
						</nav>
						
					</header>
					<!-- Related demos -->
                                    		<section class="related">
					sponcers
					</section>
				</div>
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>