-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: falcon_offers
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `card_benefits`
--

DROP TABLE IF EXISTS `card_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `details` mediumtext,
  `supplier_name` varchar(100) DEFAULT NULL,
  `image` mediumtext,
  `telephone` varchar(100) DEFAULT NULL,
  `website` mediumtext,
  `cities` varchar(500) DEFAULT NULL,
  `area_name` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_benefits`
--

LOCK TABLES `card_benefits` WRITE;
/*!40000 ALTER TABLE `card_benefits` DISABLE KEYS */;
INSERT INTO `card_benefits` VALUES (1,'Earn up to 40,000 Skywards Miles every month','CARD_OFFERS','Skyward Miles','The RAKBANK Emirates Skywards World Elite Mastercard Credit Card lets you earn Skywards Miles on all types of spends. What’s more, these Skywards Miles are awarded based on total monthly spends in Dirhams to keep it simple for you.','Emirates','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Offline',1,'2020-11-12 06:05:39','2020-12-22 10:35:18'),(2,'Fast track to Emirates Skywards Gold tier membership','CARD_OFFERS','Skyward Miles','Fast track to Emirates Skywards Gold tier membership by placing a deposit of AED 500,000 in RAKBANK Emirates Skywards Savings Account.','Emirates','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Offline',1,'2020-11-12 06:06:39','2020-12-22 10:35:18'),(3,'Emirates Skywards Silver tier membership','CARD_OFFERS','Skyward Miles','As a RAKBANK Emirates Skywards World Elite Mastercard Cardholder you would be entitled to Emirates Skywards Silver tier membership throughout the life of the card. If you’re an existing Silver member, the validity of your membership will be extended.','Emirates','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Offline',1,'2020-11-12 06:08:11','2020-12-22 10:35:18'),(4,'15% discount on Buy and Gift Miles','CARD_OFFERS','Skyward Miles','Enjoy a 15% discount when buying Skywards Miles for self or as a gift Skywards Miles to another Emirates Skywards member.','Emirates','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Online',1,'2020-11-12 06:08:11','2020-12-22 10:35:18'),(5,'Travel Insurance Confirmation letter','CARD_OFFERS','Insurance','Obtaining a travel insurance confirmation letter has never been easier. As a World Elite Mastercard® cardholder you can generate a letter online seamlessly and immediately for your Schengen or other visa requirements.','Mastercard','https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/insurance-confirmation-benefit/_jcr_content/contentpar/hero/image.adaptive.full.high.jpg/1559225238795.jpg',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/insurance-confirmation-benefit.html','Global','Online',1,'2020-11-12 06:10:31','2020-12-22 10:35:18'),(6,'Rental Collision and loss damage waiver','CARD_OFFERS','Insurance','Physical damage to the rental car in addition to loss of use, theft, and natural calamities – up to USD 50,000, Towing of the vehicle – up to USD 100, Vehicle drop off charges – up to USD 100','Mastercard','https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/rental-insurance/_jcr_content/contentpar/hero/image.adaptive.full.high.jpg/1559225238729.jpg',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/rental-insurance.html','Global','Online',1,'2020-11-12 06:12:07','2020-12-22 10:35:18'),(7,'Purchase protection','CARD_OFFERS','Insurance','Your purchased item(s) is insured against loss due to accidental damage or theft occurring within 30 days from the date of purchase as indicated on the store receipt.\n\nClick here to view the Purchase Protection terms and conditions. For any product related queries or claims please contact RAKINSURACE on 800 7254 or email to info@rakinsurance.com within UAE.','RAKINSURANCE','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'','Global','Online',1,'2020-11-12 06:15:38','2020-12-22 10:35:19'),(8,'Secure Wallet','CARD_OFFERS','Insurance','With Secure Wallet, you are covered worldwide for up to AED 10,000 in case of misuse of your Card if stolen or lost. This insurance is offered in conjunction with RAKINSURANCE.\n\nFor enquiries or lodging insurance claims please contact RAKINSURANCE on 800 7254 or email to info@rakinsurance.com.','RAKINSURANCE','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'','Global','Online',1,'2020-11-12 06:16:46','2020-12-22 10:35:19'),(9,'Access to over 1100 airport lounges with LoungeKey','CARD_OFFERS','Lifestyle Benefits','Unlimited, complimentary access for you and one accompanying guest (per visit) to over 1100 airport lounges in more than 450 cities in over 135 countries, worldwide. For details on available lounges, visit www.loungekey.com or download the LoungeKey app from the App store or Android store. To use the LoungeKey Mobile App, Cardholders need to register and create an online profile (Username and Password) on www.loungekey.com/en/mcworldelite/our-lounges and enter their RAKBANK Emirates Skywards World Elite Mastercard Credit Card details. When visiting a lounge, Cardholders need to clearly state that they want to visit the lounge under the “LoungeKey” program.','LoungeKey','https://d25xpw488bmti5.cloudfront.net/Default/Shared/homepage-banners/LK-Homepage-Banner-2-5112f907-7ba3-4665-89f5-c3dafea2acf6.webp?h=860&la=en&w=1920',NULL,'www.loungekey.com/en/mcworldelite/our-lounges','Global','Offline',1,'2020-11-12 06:19:44','2020-12-22 10:35:19'),(10,'Complementary Airport pickup and drop-off','CARD_OFFERS','Lifestyle Benefits','Enjoy chauffeured airport pick-up or drop off service complimentary 6 times each year in the UAE or avail of this service a maximum of 3 times in India (Mumbai, Chennai, Kolkata, Bengaluru and Delhi - within city limits).','RAKBANK','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','UAE, India','Offline',1,'2020-11-12 06:38:43','2020-12-22 10:35:19'),(11,'Agoda Discount','CARD_OFFERS','Lifestyle Benefits','Get up to 7% discount on all bookings made through www.agoda.com/rakbank.','Agoda','https://www.wogi.sg/uploads/brands/266/large_image.jpg',NULL,'https://www.agoda.com/rakbank','Global','Online',1,'2020-11-12 06:39:25','2020-12-22 10:35:19'),(12,'Hotels.com discount','CARD_OFFERS','Lifestyle Benefits','Get up to 10% off select accommodation rentals on Hotels.com using the promo code RAKBANK.','Hotels.com','b612c97c-4a1e-43ea-82d3-c3a5e613f021 - duplicate entry',NULL,'','Global','Online',1,'2020-11-12 06:40:13','2020-12-22 10:35:19'),(13,'MMI Travels discount','CARD_OFFERS','Lifestyle Benefits','\nGet up to 7% discount on all travel packages (flight & hotel) through MMI. Call 04-7036579 for more information.','MMI Travels','cc232bf0-f246-4063-b0e0-f90b12e89013 - duplicate entry',NULL,'','UAE','Online',1,'2020-11-12 06:40:13','2020-12-22 10:35:19'),(14,'Oberoi Hotels & Resorts','CARD_OFFERS','Lifestyle Benefits','Enjoy a complimentary third night on booking two nights with Oberoi Hotels & Resorts','Oberoi Hotels','https://www.oberoihotels.com/-/media/oberoi-hotels/website-images/offers/homepage-offer-banner-1920x562.jpg',NULL,'https://www.oberoihotels.com/alliances/mastercard/','India, Indonesia, UAE','Offline',1,'2020-11-12 06:41:48','2020-12-22 10:35:19'),(15,'Complimentary access to Amazon Prime membership for a full year','CARD_OFFERS','Lifestyle Benefits','RAKBANK Emirates Skywards World Elite Mastercard Credit Card gives you complimentary access to Amazon Prime membership for a full year. Amazon Prime includes free Delivery, Early Access to deals and Unlimited movies with Prime Video. Click here to activate your complimentary membership now.','Amazon','https://d5xydlzdo08s0.cloudfront.net/media/celebrities/15158/products/amazon_prime_uae_header_image__opening_packages_4.jpg',NULL,'https://elevate.mastercard.com/benefit/product/160358/ae-amazon-rakbank','Global','Online',1,'2020-11-12 06:42:12','2020-12-22 10:35:19'),(16,'Entertainment benefits at VOX Cinemas','CARD_OFFERS','Lifestyle Benefits','Open a world of entertainment with 50% off VOX Cinemas tickets at all times. Sign-up or log in to the VOX app or website to avail of the discount. Remember to select the RAKBANK offer and pay with your RAKBANK Emirates Skywards World Elite Mastercard Credit Card to get the discount on up to 4 tickets every month per card. Click here for more information.\n\nCurrently, in line with government restrictions, individuals above the age of 60 and children under 13 years of age will not be allowed to enter\n\nIt’s now mandatory for guests to wear a face mask at all times. The mask can be removed for the purpose of eating and drinking\n\nFor more information about your health and safety, please refer to the FAQs','Vox Cinemas','https://assets.voxcinemas.com/content/RAKBANK-VOX-MOVIE-TICKET-OFFER-BANNER-2_1567689292.jpg',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','UAE, Saudi, Qatar, Oman, Lebanon, Kuwait,Egypt, Bahrain','Offline',1,'2020-11-12 06:43:19','2020-12-22 10:35:19'),(17,'Free fuel delivery by CAFU','CARD_OFFERS','Lifestyle Benefits','Why queue-up at petrol pump when you can fill up from the comfort of your home. Order your fuel on the CAFU mobile app, use the promo code “RAKBANK” and pay with your RAKBANK Emirates Skywards World Elite Mastercard Credit Card to receive free delivery. Standard fuel rates apply.','CAFU','https://yourdubaiguide.com/wp-content/uploads/2019/12/CAFU-Fuel-delivery-service.jpg',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','UAE, Egypt, Oman','Online',1,'2020-11-12 06:44:54','2020-12-22 10:35:19'),(18,'Complementary visit to some of the finest Golf courses in Dubai','CARD_OFFERS','Lifestyle Benefits','Work on perfecting your swing; enjoy complimentary tee-time two times in a month at some of the finest golf courses in Dubai (Address Montgomerie, The Els Club and Arabian Ranches Golf Club), Abu Dhabi (Saadiyat Beach Golf Club) and Ras Al-Khaimah (Al Hamra Golf Club).\n\nTo avail of this benefit, please contact +971-47047140 or send an e-mail to rakconcierge@derbygroup.ae.Click here for the Terms & Conditions.\n\nDuring the month of Ramadan, our call center will be operational from 8.30 AM to 2.30 PM','Derby Group','https://static01.nyt.com/images/2016/07/11/sports/11MONTGOMERIE/11MONTGOMERIE-videoSixteenByNineJumbo1600.jpg',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Dubai, Abu Dhabi, Ras Al-khaimah','Offline',1,'2020-11-12 06:45:56','2020-12-22 10:35:19'),(19,'25% discount on Car rentals with Avis','CARD_OFFERS','Lifestyle Benefits','As part of the Avis and Mastercard partnership, Avis are offering a flat 25% discount for both World and World EliteTM Cardholders resident in the Middle East and Africa.\n\nSimply input your rental requirements into the panel on the left hand side of the homepage, select your Cardholder type and automatically receive your discounted rate! The discount applies to rentals in Europe, Middle East, Africa & Asia, US (North America) and Canada.\n\nthe discounts do not apply for domestic rentals (i.e for rentals taking place in the same country the booking is made)','Avis','https://si.wsj.net/public/resources/images/BN-XM907_3hKtu_OR_20180215170051.jpg',NULL,'https://www.avisworld.com/avisonline/eu-gb/avis_partners1.nsf/c/worldelitemea+homepageworldelitemea','Europe, Middle East, Africa & Asia, US and Canada','Online',1,'2020-11-12 08:13:23','2020-12-22 10:35:19'),(20,'Discount on travel bookings with Cleartrip','CARD_OFFERS','Lifestyle Benefits','Save on your next holiday to your perfect getaway destination this summer.\nBook your flight and take advantage of 10% discount by using your World and World Elite™ Mastercard card.\n\nOffer is applicable on all international round trip flights booked on Cleartrip with World and World Elite™ Mastercard cards.','Cleartrip','https://i.ytimg.com/vi/duXvHMeDBxg/maxresdefault.jpg',NULL,'https://www.cleartrip.ae/offers/uae/Mcworld','Global','Online',1,'2020-11-12 08:14:22','2020-12-22 10:35:20'),(22,'Cash Advance of up to 40% of your Credit Limit','CARD_OFFERS','Card Offer','Cash Advance of up to 40% of your Credit Limit','Mastercard','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Offline',1,'2020-11-12 08:17:59','2020-12-22 10:35:19'),(23,'Convert your purchase into a 0% Easy Payment Plan','CARD_OFFERS','Card Offer','Convert your purchase into a 0% Easy Payment Plan','RAKBANK','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/info/easy-payment-plan','Global','Offline',1,'2020-11-12 08:18:41','2020-12-22 10:35:20'),(24,'Complementary access to MTLS','CARD_OFFERS','Card Offer','Complementary access to MTLS','Mastercard','https://nucleistorage.blob.core.windows.net/public-images/falcon-images/Earn_upto_image.jpg?sv=2019-02-02&st=2020-09-28T05%3A19%3A57Z&se=2021-04-01T05%3A19%3A00Z&sr=c&sp=racwl&sig=VU1FlyhE9d14Pp9%2BpNP9eVKXoxVlPOKcvuU3kYA3vAY%3D',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Online',1,'2020-11-12 08:18:49','2020-12-22 10:35:20'),(25,'Travel inconvenience insurance','CARD_OFFERS','Insurance','Travel doesn\'t always go as planned. If you encounter an obstacle, you shouldn\'t have to face the inconvenience alone. Whether your luggage goes amiss or flight delays interrupt your plans, World Elite Mastercard® can compensate you for:\n\nBaggage loss - up to USD 3,000\nBaggage delay - USD 500\nTrip cancellation - up to USD 7,500\nTrip curtailment - up to USD 7,500\nTrip delay - USD 500\nMissed connection - USD 500','Mastercard','https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/travel-inconvenience/_jcr_content/contentpar/hero/image.adaptive.full.high.jpg/1559225238544.jpg',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/travel-inconvenience.html','Global','Online',1,'2020-11-12 08:25:25','2020-12-22 10:35:20'),(26,'Travel Medical Insurance','CARD_OFFERS','Insurance','You and your loved ones deserve peace of mind every time you travel. Rest assured that you will receive compensation for medical care or emergency help if you need it. For the greatest peace of mind, enhanced protection options are available to ensure that while you\'re traveling, your health and safety needs are met promptly and efficiently. As a World Elite Mastercard® cardholder, you get:\n\nPersonal accident insurance - up to USD 500,000\nEmergency medical evacuation and repatriation - up to USD 500,000\nMedical emergency expenses - up to USD 500,000\nDaily in-hospital cash benefit – USD 100 per day','Mastercard','https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance/travel-medical/_jcr_content/contentpar/hero/image.adaptive.full.high.jpg/1559225237993.jpg',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/insurance.html','Global','Online',1,'2020-11-12 08:25:25','2020-12-22 10:35:20'),(27,'Travel Visa at USD15','CARD_OFFERS','Lifestyle Benefits','Applying for travel visa made simple and quick for global traveler (Exclusive offer for Mastercard holders for only US$ 15)\n\nOUR SERVICE\n\nFind out if you need to apply for a Travel Visa, or not\nProvide you with information on Travel Visa fees & the documents required\nBook your appointment on your behalf (if required) and get the necessary forms filled\nSubmit Travel Visa Online, where applicable for eVisas\nYOUR BENEFIT\n\nDrastically reduce your time spent applying for Travel Visa\nAvoid filling complicated forms, we will do that for you\nReceive document checklist for your Travel Visa submission (when you are required to personally submit the Travel Visa application)','Fulfill solutions','https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/travel/fulfill-visa-benefit/_jcr_content/contentpar/hero/image.adaptive.full.high.jpg.transform/gray-light-2/image.jpg',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/travel/fulfill-visa-benefit.html','Global','Online',1,'2020-11-12 08:25:25','2020-12-22 10:35:20'),(28,'Complementary Discovery Black Membership','CARD_OFFERS','Lifestyle Benefits','Revel in the comfort and get the recognition and the benefits you deserve across 35+ hotel brands with 570+ hotels in 78 countries. Your status grants you exclusive benefits wherever you go, including:\nGuaranteed room availability for bookings made up to 24 hours prior to arrival\nDouble room upgrades\nEarly check in from 9am\nLate checkout until 6pm','Discovery','https://www.discoveryloyalty.com//var/ezwebin_site/storage/images/files/member-benefits/member-benefits/4803981-1-eng-GB/Member-Benefits_fullscreen_billboard.png',NULL,'https://www.mastercard.ae/en-ae/consumers/find-card-products/world-elite/travel/gha-benefit.html','Global','Offline',1,'2020-11-12 08:25:26','2020-12-22 10:35:20'),(29,'Hertz Gold Plus Rewards President’s Circle membership','CARD_OFFERS','Lifestyle Benefits','As a World Elite Mastercard® Cardholder, it is our pleasure to welcome you to Hertz Gold Plus Rewards President’s Circle. Hertz Gold Plus Rewards ensures a faster, more personal service that bends over backwards to offer you the very best in choice and comfort.\n \nYour World Elite Mastercard entitles you to complimentary membership which will provide you with privileges and benefits designed to help you love the road even more.\n\n•  Up to 15% discount worldwide, including Hertz Collections vehicles \n•  Upgraded membership to President`s Circle status\n•  Guaranteed one car class upgrade at participating locations*\n•  Bypass queues and counters at 50 of the world’s busiest airports\n•  Expedited Gold service at over 1,000 locations worldwide\n•  Free additional driver for spouse or partner\n\nJoin today and we look forward to greeting you as a Hertz Gold Plus Rewards member on your next rental.','Hertz','https://i2.wp.com/thepointsguy.com/wp-content/uploads/2019/07/hertz-presidents-circle-garage-airport-2019.jpg?resize=2800%2C2100&ssl=1',NULL,'https://www.hertz.com/rentacar/hertzlink/index.jsp?targetPage=Mastercard_GPRenrol_Gold.xml','Global','Online',1,'2020-11-12 08:25:26','2020-12-22 10:35:20'),(30,'15% discount on \'Buy and Gift Miles\'','CARD_OFFERS','Skyward Miles','Enjoy a 15% discount when buying Skywards Miles for self or as a gift Skywards Miles to another Emirates Skywards member.','Emirates','',NULL,'https://rakbank.ae/wps/portal/retail-banking/cards/personal/emirates-skywards-world-elite-card','Global','Online',1,'2020-12-20 16:45:05','2020-12-22 10:35:20'),(31,'20% discount up to three rides per month on Careem','CARD_OFFERS','Lifestyle Benefits','Enjoy 20% discount – 3 times per month across the Middle East. Simply download the Careem app from the App Store or Google Play Store, then add your RAKBANK Mastercard Credit Card and enter the promo code MASTERCARD when booking','Careem','',NULL,'https://rakbank.ae/wps/wcm/connect/f9cde46a-80d1-4e01-9a1b-9a175c12c788/J00148+-+Careem+T%26C++EN.pdf?MOD=AJPERES&CVID=n9GPknz','Middle East','Online',1,'2020-12-20 16:45:18','2020-12-22 10:35:20');
/*!40000 ALTER TABLE `card_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` tinyint(1) DEFAULT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_details` varchar(45) DEFAULT NULL,
  `category_icon` varchar(500) DEFAULT NULL,
  `category_title` varchar(200) DEFAULT NULL,
  `category_subtitle` varchar(500) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT '0',
  `category_order` int(11) DEFAULT '0',
  `usage_count` int(11) DEFAULT '0',
  `search_count` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1830 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Rakfoodie',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','RAKfoodie',NULL,0,1,2,0,1,'2020-07-29 04:13:35','2020-12-22 08:30:05'),(2,2,'Health',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Health & Wellness',NULL,0,2,1,0,1,'2020-07-29 04:13:35','2020-12-22 08:30:05'),(3,2,'Jewellery',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/JWELLERY.svg','Jewellery & Watches',NULL,0,6,0,0,1,'2020-07-29 04:13:36','2020-12-22 08:30:05'),(4,2,'Travel',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/TRAVEL.svg','Travel & Entertainment',NULL,0,3,1,0,1,'2020-07-29 04:13:36','2020-12-22 08:30:05'),(5,2,'Shopping',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Shopping',NULL,0,4,2,0,1,'2020-07-29 04:13:36','2020-12-22 08:30:05'),(6,2,'Services',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','Services',NULL,0,5,1,0,1,'2020-07-29 04:13:36','2020-12-22 08:30:05'),(7,2,'ALL_OFFERS',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','All Card',NULL,0,7,0,0,1,'2020-07-29 04:13:36','2020-12-22 08:30:05'),(30,2,'Chinese, Japanese or Thai',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Chinese, Japanese or Thai',NULL,1,0,0,0,0,'2020-08-20 01:59:44','2020-12-18 08:09:03'),(31,2,'Indian',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Indian',NULL,1,0,25,25,1,'2020-08-20 01:59:44','2020-12-18 08:09:04'),(32,2,'Meal Subscription',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Meal Subscription',NULL,1,0,0,0,1,'2020-08-20 01:59:44','2020-12-18 08:09:04'),(33,2,'International',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','International',NULL,1,0,0,0,1,'2020-08-20 01:59:44','2020-12-18 08:09:04'),(34,2,'Cafe',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Cafe',NULL,1,0,0,5,1,'2020-08-20 01:59:45','2020-12-18 08:09:04'),(35,2,'Arabic',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Arabic',NULL,1,0,0,0,1,'2020-08-20 01:59:45','2020-12-18 08:09:04'),(36,2,'Lounge',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Lounge',NULL,1,0,0,0,1,'2020-08-20 01:59:46','2020-12-18 08:09:04'),(37,2,'Food Delivery',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Food Delivery',NULL,1,0,0,0,1,'2020-08-20 01:59:47','2020-12-18 08:09:04'),(38,2,'Desserts',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Desserts',NULL,1,0,0,0,1,'2020-08-20 01:59:48','2020-12-18 08:09:04'),(39,2,'Italian',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Italian',NULL,1,0,0,0,1,'2020-08-20 01:59:49','2020-12-18 08:09:04'),(40,2,'Other Cuisine',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Other Cuisine',NULL,1,0,0,0,1,'2020-08-20 01:59:49','2020-12-18 08:09:04'),(41,2,'Seafood',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Seafood',NULL,1,0,0,0,1,'2020-08-20 01:59:51','2020-12-18 08:09:04'),(42,2,'Best Foodie Fridays',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Best Foodie Fridays',NULL,1,0,0,0,1,'2020-08-20 01:59:53','2020-12-18 08:09:04'),(43,2,'Pakistani',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Pakistani',NULL,1,0,0,0,1,'2020-08-20 02:00:02','2020-12-18 08:09:04'),(44,2,'European',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','European',NULL,1,0,0,0,1,'2020-08-20 02:00:12','2020-12-18 08:09:04'),(45,2,'Dentistry',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Dentistry',NULL,2,0,0,0,1,'2020-08-20 02:00:29','2020-12-18 08:09:04'),(46,2,'Hospitals & Clinics',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Hospitals & Clinics',NULL,2,0,0,0,1,'2020-08-20 02:00:29','2020-12-18 08:09:05'),(47,2,'Rejuvenation',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Rejuvenation',NULL,2,0,0,0,1,'2020-08-20 02:00:30','2020-12-18 08:09:05'),(48,2,'Fitness Club',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Fitness Club',NULL,2,0,0,4,1,'2020-08-20 02:00:30','2020-12-18 08:09:05'),(49,2,'Aesthetics',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Aesthetics',NULL,2,0,0,0,1,'2020-08-20 02:00:31','2020-12-18 08:09:05'),(50,2,'Beauty Salons',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/HEALTH.svg','Beauty Salons',NULL,2,0,0,0,1,'2020-08-20 02:00:35','2020-12-18 08:09:05'),(52,2,'Getaways',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/TRAVEL.svg','Getaways',NULL,4,0,0,0,1,'2020-08-20 02:00:44','2020-12-18 08:09:05'),(1774,2,'Activities',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/TRAVEL.svg','Activities',NULL,4,0,0,0,1,'2020-11-10 18:25:19','2020-12-18 08:09:05'),(1775,2,'Cinema',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/TRAVEL.svg','Cinema',NULL,4,0,0,0,1,'2020-11-10 18:25:25','2020-12-18 08:09:05'),(1776,2,'Automotives',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','Automotives',NULL,6,0,0,0,1,'2020-11-10 18:25:52','2020-12-18 08:09:02'),(1777,2,'Training & Education',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','Training & Education',NULL,6,0,0,0,1,'2020-11-10 18:25:54','2020-12-18 08:09:02'),(1778,2,'Home Services',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','Home Services',NULL,6,0,0,0,1,'2020-11-10 18:25:56','2020-12-18 08:09:02'),(1779,2,'Others',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/CARD_BENEFITS.svg','Others',NULL,6,0,0,0,1,'2020-11-10 18:26:03','2020-12-18 08:09:02'),(1780,2,'Home Furnishing',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Home Furnishing',NULL,5,0,0,0,1,'2020-11-10 18:27:23','2020-12-18 08:09:05'),(1781,2,'Online Shopping',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Online Shopping',NULL,5,0,0,0,1,'2020-11-10 18:27:26','2020-12-18 08:09:05'),(1782,2,'Eyewear',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Eyewear',NULL,5,0,0,0,1,'2020-11-10 18:27:26','2020-12-18 08:09:05'),(1783,2,'Fashion',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Fashion',NULL,5,0,0,0,1,'2020-11-10 18:27:27','2020-12-18 08:09:05'),(1784,2,'Personal Care',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Personal Care',NULL,5,0,0,0,1,'2020-11-10 18:27:31','2020-12-18 08:09:05'),(1785,2,'Electronics and Mobiles',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/SHOPPING.svg','Electronics and Mobiles',NULL,5,0,0,0,1,'2020-11-10 18:27:33','2020-12-18 08:09:05'),(1791,2,'Chinese, Japanese or Thai',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/RAKFOODIE.svg','Chinese, Japanese or Thai',NULL,1,0,0,0,1,'2020-12-14 07:43:12','2020-12-18 08:09:04'),(1793,2,'Entertainment',NULL,'https://falcon-s3-images.s3-eu-west-1.amazonaws.com/falcon-images/TRAVEL.svg','Entertainment',NULL,4,0,0,0,1,'2020-12-14 08:01:59','2020-12-18 08:09:05'),(1825,NULL,'CARD_OFFERS',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS.svg','Card Offers',NULL,0,NULL,0,0,1,'2020-12-22 04:56:27','2020-12-22 04:56:27'),(1826,NULL,'CARD_OFFER_Skyward Miles',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS.svg','Skyward Miles',NULL,1825,NULL,0,0,1,'2020-12-22 04:56:48','2020-12-22 04:56:48'),(1827,NULL,'CARD_OFFER_Insurance',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS.svg','Insurance',NULL,1825,NULL,0,0,1,'2020-12-22 04:56:51','2020-12-22 04:56:51'),(1828,NULL,'CARD_OFFER_Lifestyle Benefits',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS.svg','Lifestyle Benefits',NULL,1825,NULL,0,0,1,'2020-12-22 04:56:53','2020-12-22 04:56:53'),(1829,NULL,'CARD_OFFER_Card Offer',NULL,'https://nucleistorage.blob.core.windows.net/public-images/falcon-images/CARD_BENEFITS.svg','Card Offer',NULL,1825,NULL,0,0,1,'2020-12-22 04:57:04','2020-12-22 04:57:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cta_button`
--

DROP TABLE IF EXISTS `cta_button`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta_button` (
  `id` int(11) NOT NULL,
  `error_id` int(11) DEFAULT NULL,
  `cta_text` varchar(100) DEFAULT NULL,
  `button_order` int(11) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  `flex` int(11) DEFAULT NULL,
  `button_type` varchar(100) DEFAULT NULL,
  `action_close_overlay` tinyint(4) DEFAULT NULL,
  `action_open_deep_link` varchar(100) DEFAULT NULL,
  `action_toast` varchar(100) DEFAULT NULL,
  `action_snackbar` varchar(100) DEFAULT NULL,
  `action_auto_close_overlay` bigint(20) DEFAULT NULL,
  `retry_api_call` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta_button`
--

LOCK TABLES `cta_button` WRITE;
/*!40000 ALTER TABLE `cta_button` DISABLE KEYS */;
INSERT INTO `cta_button` VALUES (1,0,'1',0,NULL,NULL,'1',1,'2020-08-04 11:20:09','2020-08-04 11:20:09',NULL,NULL,NULL,NULL,'2020-08-25 08:41:10','2020-08-25 08:41:10'),(2,0,'2',0,NULL,NULL,'1',1,'2020-08-04 11:20:09','2020-08-04 11:20:09',NULL,NULL,NULL,NULL,'2020-08-25 08:41:10','2020-08-25 08:41:10'),(3,0,'3',0,NULL,NULL,'1',1,'2020-08-04 11:20:09','2020-08-04 11:20:09',NULL,NULL,NULL,NULL,'2020-08-25 08:41:10','2020-08-25 08:41:10');
/*!40000 ALTER TABLE `cta_button` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_handling_details`
--

DROP TABLE IF EXISTS `error_handling_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_handling_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `error_type` varchar(45) DEFAULT NULL,
  `toast_snack_duration` bigint(20) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `overlay_height` int(3) DEFAULT NULL,
  `overlay_image_url` varchar(200) DEFAULT NULL,
  `overlay_fixed` tinyint(4) DEFAULT NULL,
  `extra_info` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_handling_details`
--

LOCK TABLES `error_handling_details` WRITE;
/*!40000 ALTER TABLE `error_handling_details` DISABLE KEYS */;
INSERT INTO `error_handling_details` VALUES (1,'TOAST_ERROR',20,'Location Not Found','Looks like the location details are not correct',NULL,NULL,0,'2020-08-19 12:21:04',1,'2020-08-25 08:37:47','2020-09-03 10:10:37'),(2,'BOTTOM_OVERLAY_ERROR',NULL,'Something went wrong','We encountered a problem somewhere.',0,'image',0,'2020-08-11 12:22:32',1,'2020-08-25 08:37:47','2020-10-23 12:48:31'),(3,'SNACK_BAR_ERROR',20,'City Not Supported','Current City is not supported',NULL,NULL,0,'2020-08-11 12:22:32',1,'2020-08-25 08:37:47','2020-09-03 10:10:37'),(4,'INLINE_ERROR_LIST',NULL,'Location Not Found','No locations found for the given location',NULL,NULL,0,'2020-08-11 12:22:32',1,'2020-08-25 08:37:47','2020-09-03 10:10:37'),(5,'BOTTOM_OVERLAY_ERROR',NULL,'Offers Not Found','No offers found for this location',0,'image',1,'2020-08-17 16:32:32',1,'2020-08-25 08:37:47','2020-10-23 12:48:31'),(6,'BOTTOM_OVERLAY_ERROR',NULL,'Country Not Supported','Current country is not supported',0,'image',0,'2020-08-17 16:33:23',1,'2020-08-25 08:37:47','2020-10-23 12:48:31'),(7,'BOTTOM_OVERLAY_ERROR',NULL,'Favourite Offers Not Found','No Favourite Offers found',0,'image',0,'2020-08-23 10:42:37',1,'2020-08-25 08:37:47','2020-10-23 12:48:31'),(8,'BOTTOM_OVERLAY_ERROR',NULL,'Popular Cities Not Found','No popular cities found',0,'image',0,'2020-09-14 11:46:26',1,'2020-09-14 11:46:26','2020-10-23 12:48:31'),(9,'BOTTOM_OVERLAY_ERROR',NULL,'Offer Details Not Found','No details found for the offer',0,'image',0,'2020-09-14 11:51:59',1,'2020-09-14 11:51:59','2020-10-23 12:48:31');
/*!40000 ALTER TABLE `error_handling_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inline_error`
--

DROP TABLE IF EXISTS `inline_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inline_error` (
  `id` int(11) NOT NULL,
  `error_id` int(11) DEFAULT NULL,
  `error_text` varchar(100) DEFAULT NULL,
  `animated` tinyint(4) DEFAULT NULL,
  `field_index` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inline_error`
--

LOCK TABLES `inline_error` WRITE;
/*!40000 ALTER TABLE `inline_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `inline_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_config`
--

DROP TABLE IF EXISTS `offer_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(200) NOT NULL,
  `config_value` mediumtext NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_config`
--

LOCK TABLES `offer_config` WRITE;
/*!40000 ALTER TABLE `offer_config` DISABLE KEYS */;
INSERT INTO `offer_config` VALUES (1,'DEFAULT_CITY','Dubai',1,'2020-08-08 07:10:48','2020-08-08 07:10:48'),(2,'DEFAULT_COUNTRY','United Arab Emirates',1,'2020-08-14 06:33:45','2020-08-18 11:15:51');
/*!40000 ALTER TABLE `offer_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(50) NOT NULL,
  `display_name` varchar(200) DEFAULT NULL,
  `type` tinyint(3) DEFAULT '1',
  `section_type` enum('OFFER','CITY','AREA','CATEGORY','SUB_CATEGORY','SUPPLIER') NOT NULL DEFAULT 'OFFER',
  `rule` mediumtext,
  `user_based` tinyint(1) DEFAULT '0',
  `size` int(11) DEFAULT '30',
  `sort_options` varchar(20) DEFAULT NULL,
  `show_expiry_text` tinyint(1) DEFAULT '0',
  `usage_count` int(11) DEFAULT '0',
  `order_val` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`section_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'NEARBY_OFFERS','Offers near you',0,'OFFER','{\n  \"basedOnLocation\": {\n    \"locationType\": \"CITY\",\n    \"orderByUserLocation\": true\n  }\n}',0,30,'0,1',0,263,1,1,'2020-08-05 05:27:43','2020-12-23 12:46:11'),(2,'RECOMMENDED_OFFERS','Recommended for you',0,'OFFER','{\n  \"basedOnLocation\": {\n    \"locationType\": \"CITY\"\n  },\n  \"basedOnUserPref\": true\n}',0,30,'3,0',0,0,2,1,'2020-08-05 05:27:43','2020-10-29 10:30:42'),(3,'POPULAR_OFFERS','Popular offers',0,'OFFER','{   \"popularity\": {     \"type\": \"USED\"   },   \"basedOnLocation\": {     \"locationType\": \"CITY\"   } }',0,30,'4,0',0,66,3,1,'2020-08-05 05:27:43','2020-12-23 12:46:31'),(4,'CITIES','Explore by city',1,'CITY',NULL,0,30,NULL,0,37,7,1,'2020-08-05 05:27:43','2020-12-16 09:44:36'),(5,'CATEGORY','Categories to choose from',3,'CATEGORY',NULL,0,30,NULL,0,143,4,1,'2020-08-05 05:27:43','2020-12-23 11:16:54'),(6,'JUST_LAUNCHED','Just launched',0,'OFFER','{\n  \"basedOnLocation\": {\n    \"locationType\": \"CITY\"\n  },\n  \"orderByDate\": {\n    \"order\": \"ASC\"\n  }\n}',0,30,'2,0',0,63,5,1,'2020-08-19 10:57:28','2020-12-23 10:48:18'),(7,'EXPIRY','Expiring soon',0,'OFFER','{\n  \"basedOnLocation\": {\n    \"locationType\": \"CITY\"\n  },\n  \"basedOnExpiry\": {\n    \"daysBefore\": 30\n  }\n}',0,30,'1,0',1,35,6,1,'2020-09-16 08:40:20','2020-12-23 10:03:37'),(8,'CARD_OFFERS','Card benefits',0,'OFFER','{}',0,30,NULL,0,22,8,1,'2020-10-07 08:17:34','2020-12-24 06:03:28'),(9,'RECENTLY_VIEWED','Recently viewed',0,'OFFER','',1,30,'5,0',0,15,9,1,'2020-10-13 10:22:47','2020-12-23 10:49:52');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supported_countries`
--

DROP TABLE IF EXISTS `supported_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supported_countries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `default_city` varchar(200) NOT NULL,
  `status` tinyint(3) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supported_countries`
--

LOCK TABLES `supported_countries` WRITE;
/*!40000 ALTER TABLE `supported_countries` DISABLE KEYS */;
INSERT INTO `supported_countries` VALUES (1,'United Arab Emirates',242,'Dubai',1,'2020-08-14 06:31:23','2020-08-15 12:02:37');
/*!40000 ALTER TABLE `supported_countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  7:09:56
