PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE events (
    id integer NOT NULL,
    status character varying,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    description character varying,
    official boolean,
    visibility character varying,
    guests_can_invite_others boolean,
    modified_date timestamp without time zone,
    created_date timestamp without time zone,
    participant_count numeric,
    reason_for_private character varying,
    order_email_template character varying,
    name character varying
);
INSERT INTO "events" VALUES(1,'confirmed','2015-08-22 17:00:00','2015-08-22 19:00:00','Lets make sure all NYers are registered to vote, let''s meet near the 72nd street train station, see you there!','f','public','f','2015-08-17 15:36:08.987','2015-08-13 17:38:41.424',8,'','','UWS Voter Registration');
INSERT INTO "events" VALUES(2,'confirmed','2015-11-08 00:00:00','2015-11-08 02:00:00','County Leader and all elected officials in the Democratic party will endorse Hillary''s policy for equal rights and equal pay for women.  This will be a fund raiser opened to all democrats and independents.  The event will draw veteran organizers of past Queens County campaigns and past delegates to the Democratic National Convention.  Organizers will explore Favorite Son or Favorite Women campaigns.','f','public','f','2015-08-11 01:25:50.025','2015-08-11 01:25:50.025',10,'','','Queens County, New York for Hillary Clinton');
INSERT INTO "events" VALUES(3,'confirmed','2015-09-16 20:00:00','2015-09-16 23:00:00','The event might be in September 16th which is the Mexican Independence Day and everybody will be looking for share smiles, broke piatas and eat tacos. ','f','public','f','2015-06-08 23:22:56.185','2015-06-08 23:17:10.864',20,'','','Viva MÃ©xico en EUA!');
INSERT INTO "events" VALUES(4,'confirmed','2015-08-25 18:00:00','2015-08-25 20:00:00','Meet fellow Hillary supporters on the grounds of Boscobel for an August 25 2pm performance of Shakespeare''s The Tempest.  Tickets are very limited so call the box office now for your free tickets at 845 265 9575','f','public','f','2015-06-15 20:05:06.231','2015-06-15 20:05:06.231',10,'','','Meet Up at Hudson Valley Shakespeare Festival performance of The Tempest');
INSERT INTO "events" VALUES(5,'confirmed','2015-10-17 19:00:00','2015-10-17 22:00:00','Exploring The Four Fights in an atmosphere of like minded people who are interested in
Supporting Her!  ','f','public','f','2015-07-12 04:50:33.547','2015-07-12 04:50:33.547',15,'','','Support Her 2016');
INSERT INTO "events" VALUES(6,'confirmed','2015-09-01 22:30:00','2015-09-02 00:00:00','Opportunity to learn about Hillary, her positions on vital issues and help build a grassroots organization in South Jersey','f','public','f','2015-08-05 17:16:56.532','2015-08-05 17:16:56.532',4,'','','"South Jersey For Hillary" Grassroots Meeting');
INSERT INTO "events" VALUES(7,'confirmed','2015-09-20 15:00:00','2015-09-20 17:00:00','Come join the Spring City/Royersford Democrats for our Monthly Hillary Campaign Meeting. We We will be serving Coffee, Tea, Lox and Bagels, Muffins, Danish and Fruit. Come out to meet like minded Montgomery County Hillary Supporters.

We will discuss, how you can start a Hillary2016 group in your town and host your own Hillary2016 Event and discuss tasks and strategies to help Hillary win in 2016.

Hope to see you there!


Share       ','f','public','f','2015-07-19 15:28:26.254','2015-07-19 15:28:26.254',8,'','','Coffee, Tea and Hillary');
INSERT INTO "events" VALUES(8,'confirmed','2015-08-29 21:00:00','2015-08-29 23:00:00','Join fellow Hillary supporters for a production of The Wonderful Wizard of Oz.  Blankets, chairs and picnics welcome.','f','public','f','2015-06-19 13:12:40.834','2015-06-16 00:48:20.793',6,'','','Woodstock Shakespeare Festival Meet Up');
INSERT INTO "events" VALUES(9,'confirmed','2015-08-29 14:00:00','2015-08-29 18:00:00','Join us to knock on doors for Hillary! After a quick training, we will head out into Keene neighborhoods to talk to other likely Democratic voters about Hillary Clinton and our support for her in the New Hampshire primary.','f','public','f','2015-08-13 16:33:02.369','2015-08-13 16:33:02.369',0,'','','Keene Canvass');
INSERT INTO "events" VALUES(10,'confirmed','2015-09-22 23:00:00','2015-09-23 00:15:00','Join us to discuss new and exciting updates from the campaign trail and learn how you can help Hillary Clinton achieve the Democratic Nomination .

Contact: Courtney Watson or Martha McKenna by email: marylandforHRC@gmail.com or phone: 410-917-9576','t','public','f','2015-08-05 19:37:46.849','2015-08-05 18:46:19.793',12,'','','Maryland For Hillary Grassroots Organizing Meeting');
INSERT INTO "events" VALUES(11,'confirmed','2015-08-24 18:30:00','2015-08-24 20:30:00','Join neighbors in Peterborough to learn more about our campaign and hear from Governor Shumlin of Vermont about why he''s supporting Hillary in the New Hampshire Primary!','f','public','f','2015-08-19 22:59:11.086','2015-08-19 21:43:31.512',1,'','','Peterborough House Party with Gov. Shumlin of Vermont');
INSERT INTO "events" VALUES(12,'confirmed','2015-08-22 20:00:00','2015-08-22 22:00:00','We are getting together to talk about and work for Hillary Clinton. We will be making phone calls to confirm supporters and recruit volunteers to canvass in NH and MA.','f','public','f','2015-08-14 02:00:36.149','2015-08-14 01:59:34.23',0,'','','Lexington for Hillary House Party and Phone Bank');
INSERT INTO "events" VALUES(13,'confirmed','2015-08-22 15:30:00','2015-08-22 18:30:00','We will have tables at Depot and Massachusetts Avenue with information about Hillary Clinton and clipboards to recruit supporter and volunteers to work on the campaign and travel to New Hampshire to canvass. ','f','public','f','2015-08-14 01:53:25.016','2015-08-14 01:49:03.328',0,'','','Lexington for Hillary Weekend of Action Information and Volunteer Recruitment');
INSERT INTO "events" VALUES(14,'confirmed','2015-09-07 16:00:00','2015-09-07 19:00:00','Join your friends and neighbors to march for Hillary in the annual Milford Labor Day Parade!

Meet at 12:00PM at Milford High School for line up. The parade will officially kick-off at 1:00PM from the high school and end at the Milford VFW.

We''ll bring the stick signs and water - you wear the red, white and blue!

Parking Information:
All participants should park near the parade end point in one of two parking lots directly across from the VFW.
- Milford Lumber (72 Mont Vernon Road)
- Boys and Girls Club (56 Mont Vernon Road)

These parking lots are next to one another. Upon parking at one of these locations, a designated staffer will coordinate you with an available car, which will shuttle you to Milford High School. In order to get a ride, you must arrive earlier than 12:00 PM.
','f','public','f','2015-08-18 19:57:55.661','2015-08-15 14:52:19.587',2,'','','Milford Labor Day Parade');
INSERT INTO "events" VALUES(15,'confirmed','2015-08-22 14:00:00','2015-08-22 18:00:00','People here in Nashua Wards 1, 2, 5, 8, and 9 are gathering together to knock on doors and chat with fellow Hillary supporters and undecided voters - and you should be a part of it!

Youll meet up with fellow volunteers and, after a quick training on what to say and how to record the data, youll hit the streets to meet new folks, talk about Hillary, and ask them to get involved. It''s easy and fun!

This is how were building our ground game all across New Hampshire. A strong organizing network in neighborhoods like yours is how we win.

Join us!','f','public','f','2015-08-15 22:29:05.754','2015-08-15 22:29:05.754',0,'','','Nashua West Canvass');
INSERT INTO "events" VALUES(16,'confirmed','2015-08-20 21:00:00','2015-08-21 00:00:00','We''ll be calling our neighbors in Milford to talk about Hillary Clinton. Join us! ','f','public','f','2015-08-14 17:52:10.961','2015-08-14 17:52:10.96',0,'','','Milford Phone Bank');
INSERT INTO "events" VALUES(17,'confirmed','2015-08-22 14:00:00','2015-08-22 19:00:00','Join us for our Milford Canvass! We''ll be talking to your neighbors and coming to a door near you. No experience required! ','f','public','f','2015-08-15 18:09:03.116','2015-08-15 18:09:03.116',0,'','','Milford Canvass');
INSERT INTO "events" VALUES(18,'confirmed','2015-08-24 20:30:00','2015-08-24 23:30:00','Join us for a phone bank in our Greater Nashua Field Office, which will be kicked off by Governor Dan Malloy of Connecticut!','f','public','f','2015-08-18 23:37:15.463','2015-08-18 17:49:44.387',0,'','','Nashua Phone Bank with Governor Dan Malloy');
INSERT INTO "events" VALUES(19,'confirmed','2015-08-26 21:30:00','2015-08-27 00:00:00','Hillary Clinton wants to be a champion for women and address the issues that affect women such as equal pay and health care. We will be training and calling other women in the Greater Nashua Area. We have a great group of volunteers and delicious snacks. We would love to have you join us','f','public','f','2015-08-19 20:09:00.624','2015-08-19 20:09:00.624',0,'','','Nashua Women to Women Phone Bank');
INSERT INTO "events" VALUES(20,'confirmed','2015-08-20 22:00:00','2015-08-21 00:00:00','As one of the most diverse cities in New Hampshire, we are excited to host a Latino Phone Bank in the Southern Tier Field Office. We will be talking about the issues that are important to Latinos such as immigration reform and the economy. We look forward to seeing everyone on Thursday!','f','public','f','2015-08-16 19:30:21.464','2015-08-16 19:30:21.464',0,'','','Nashua Latino Phone Bank');
INSERT INTO "events" VALUES(21,'confirmed','2015-08-22 14:00:00','2015-08-22 18:00:00','We are going door to door to talk to our New Hampshire neighbors about Hillary Clinton and the importance of this election! We will be training our canvassers and we will pair you up with an experienced canvasser.','f','public','f','2015-08-17 21:22:39.27','2015-08-17 21:22:39.269',1,'','','Nashua East Canvass');
INSERT INTO "events" VALUES(22,'confirmed','2015-08-26 21:00:00','2015-08-27 00:30:00','Join us for our Merrimack Phone Bank! No experience necessary, but enthusiasm is required. ','f','public','f','2015-08-20 01:12:30.56','2015-08-20 01:12:30.56',0,'','','Merrimack Phone Bank');
CREATE TABLE locations (
    id integer NOT NULL,
    event_id integer,
    contact_phone character varying,
    "primary" boolean,
    contact_email character varying,
    contact_family_name character varying,
    contact_given_name character varying,
    host_given_name character varying,
    timezone character varying,
    city character varying,
    locality character varying,
    state character varying,
    address_type character varying,
    latitude character varying,
    longitude character varying,
    accuracy character varying,
    address1 character varying,
    address2 character varying,
    postal_code character varying,
    country character varying,
    modified_date timestamp without time zone,
    created_date timestamp without time zone,
    number_spaces_remaining numeric,
    spaces_remaining boolean,
    name character varying
);
INSERT INTO "locations" VALUES(1,1,'','f','','','Renee','','America/New_York','New York','','NY','','40.7787927','-73.9820623','','72 nd Street at Broadway','','10024','US','2015-08-17 15:36:09.509','2015-08-13 17:38:41.812',42,'t','72 nd Street Train Station');
INSERT INTO "locations" VALUES(2,2,'','f','','','Michael ','','America/New_York','Queens','','NY','','40.7222328','-73.8510454','','Austin St., Forest Hills, NY','','11375','US','2015-08-11 01:25:51.012','2015-08-11 01:25:51.012',40,'t','Room at Queens County Democratic Headquarters');
INSERT INTO "locations" VALUES(3,3,'','f','','','RAFAEL','RAFAEL','America/New_York','Yonkers','','NY','','40.925144','-73.899184','','65 Highland Ave.','','10705','US','2015-06-08 23:22:56.706','2015-06-08 23:17:11.484',130,'t','');
INSERT INTO "locations" VALUES(4,4,'','f','','','Michael','Michael ','America/New_York','Garrison','','NY','','41.41038','-73.937703','','1601 Rt 9D','','10524','US','2015-06-15 20:05:07.242','2015-06-15 20:05:07.242',0,'f','Boscobel Hudson Valley Shakespeare Festival');
INSERT INTO "locations" VALUES(5,5,'','f','','','Mia','Mia','America/New_York','Philadelphia','','PA','','40.0307576','-75.1852093','','633 W Rittenhouse Street ','','19144','US','2015-07-12 04:50:34.062','2015-07-12 04:50:34.062',15,'t','');
INSERT INTO "locations" VALUES(6,6,'','f','','','Paul','Paul','America/New_York','Haddon Township','','NJ','','39.902909','-75.061159','','15 MacArthur Blvd','','08108','US','2015-08-05 17:16:56.959','2015-08-05 17:16:56.959',NULL,'t','William G. Roher Memorial Library');
INSERT INTO "locations" VALUES(7,7,'','f','','','Peninnah','Pauline','America/New_York','Spring City','','PA','','40.177544','-75.5540089','','140 N, Wall St','','19475','US','2015-07-19 15:28:26.754','2015-07-19 15:28:26.754',NULL,'t','Peninnah''s Place');
INSERT INTO "locations" VALUES(8,8,'','f','','','Michael','Michael','America/New_York','Woodstock','','NY','','42.0531794','-74.1122506','','45 Comeau Drive','Rt. 212 opposite old firehouse','12498','US','2015-06-19 13:12:41.407','2015-06-16 00:48:21.273',24,'t','Comeau Property');
INSERT INTO "locations" VALUES(9,9,'','f','','','Kat','','America/New_York','Keene','','NH','','42.941319','-72.275936','','265 Washington Street','','03431','US','2015-08-13 16:33:02.82','2015-08-13 16:33:02.819',NULL,'t','');
INSERT INTO "locations" VALUES(10,10,'','f','','','','','America/New_York','Ellicott City','','MD','','39.270878','-76.8024691','','3000 Milltowne Drive','','21043','US','2015-08-05 19:37:47.377','2015-08-05 18:46:20.334',NULL,'t','Roger Carter Community Center');
INSERT INTO "locations" VALUES(11,11,'','f','','','Kat','','America/New_York','Peterborough','','NH','','42.8705752','-71.9414744','','66 Cheney Avenue','','03458','US','2015-08-19 22:59:12.09','2015-08-19 21:43:31.89',NULL,'t','');
INSERT INTO "locations" VALUES(12,12,'','f','','','Eileen','','America/New_York','Lexington','','MA','','42.4609077','-71.2220832','','','','02420','US','2015-08-14 02:00:36.571','2015-08-14 01:59:34.601',30,'t','TBD');
INSERT INTO "locations" VALUES(13,13,'','f','','','Eileen','','America/New_York','Lexington','','MA','','42.4609077','-71.2220832','','','','02420','US','2015-08-14 01:53:25.44','2015-08-14 01:49:03.801',NULL,'t','Depot Square in Lexington Center');
INSERT INTO "locations" VALUES(14,14,'','f','','','Christie','','America/New_York','Milford','','NH','','42.82902','-71.6596243','','100 West Street','','03055','US','2015-08-18 19:57:56.234','2015-08-15 14:52:20.043',NULL,'t','Milford High School');
INSERT INTO "locations" VALUES(15,15,'','f','','','Daniel','','America/New_York','Nashua','','NH','','42.7190604','-71.4789542','','10 Monica Drive','','03062','US','2015-08-15 22:29:06.252','2015-08-15 22:29:06.252',NULL,'t','Home of Dave Tencza');
INSERT INTO "locations" VALUES(16,16,'','f','','','Christie','','America/New_York','Milford','','NH','','42.8352485','-71.6479651','','49 Nashua St','','03055','US','2015-08-14 17:52:11.405','2015-08-14 17:52:11.405',NULL,'t','Wadleigh Memorial Library ');
INSERT INTO "locations" VALUES(17,17,'','f','','','Christie','','America/New_York','Milford','','NH','','42.839925','-71.6491157','','32 Summer St','','03055','US','2015-08-15 18:09:03.556','2015-08-15 18:09:03.555',NULL,'t','Home of Mary Ellen Curran');
INSERT INTO "locations" VALUES(18,18,'','f','','','Manuel','','America/New_York','Nashua','','NH','','42.7622385','-71.4663367','','97 Main Street','','03060','US','2015-08-18 23:37:16.837','2015-08-18 17:49:44.878',NULL,'t','Nashua Field Office');
INSERT INTO "locations" VALUES(19,19,'','f','','','Manuel','','America/New_York','Nashua','','NH','','42.7622385','-71.4663367','','97 Main Street','','03060','US','2015-08-19 20:09:01.016','2015-08-19 20:09:01.016',NULL,'t','Southern Tier Field Office');
INSERT INTO "locations" VALUES(20,20,'','f','','','Manuel','','America/New_York','Nashua','','NH','','42.7622385','-71.4663367','','97 Main Street','','03060','US','2015-08-16 19:30:21.902','2015-08-16 19:30:21.902',NULL,'t','Southern Tier Field Office');
INSERT INTO "locations" VALUES(21,21,'','f','','','Manuel','','America/New_York','Nashua','','NH','','42.7622385','-71.4663367','','97 Main Street','','03060','US','2015-08-17 21:22:39.668','2015-08-17 21:22:39.668',NULL,'t','Southern Tier Field Office');
INSERT INTO "locations" VALUES(22,22,'','f','','','Christie','','America/New_York','Merrimack ','','NH','','42.7977695','-71.4887107','','15 Heron Cove Drive','','03054','US','2015-08-20 01:12:31.173','2015-08-20 01:12:31.173',NULL,'t','Home of Judy Nicholson');
COMMIT;
