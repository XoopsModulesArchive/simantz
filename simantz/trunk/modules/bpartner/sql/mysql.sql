CREATE TABLE bpartner  (
   bpartner_id  int(11) NOT NULL AUTO_INCREMENT,
   bpartnergroup_id  int(11) NOT NULL,
   bpartner_no  varchar(10) NOT NULL,
   bpartner_name  varchar(50) NOT NULL,
   isactive  smallint(6) NOT NULL,
   seqno  smallint(6) NOT NULL,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
   currency_id  int(11) NOT NULL,
   terms_id  int(11) NOT NULL,
   salescreditlimit  decimal(12,2) NOT NULL,
   organization_id  int(11) NOT NULL,
   bpartner_url  varchar(100) NOT NULL,
   debtoraccounts_id  int(11) NOT NULL,
   description  text NOT NULL,
   shortremarks  varchar(100) NOT NULL,
   tax_id  int(11) NOT NULL,
   currentbalance  decimal(12,2) NOT NULL,
   creditoraccounts_id  int(11) NOT NULL,
   isdebtor  smallint(1) NOT NULL,
   iscreditor  smallint(1) NOT NULL,
   istransporter  smallint(1) NOT NULL,
   purchasecreditlimit  decimal(14,2) NOT NULL,
   enforcesalescreditlimit  smallint(1) NOT NULL,
   enforcepurchasecreditlimit  smallint(1) NOT NULL,
   currentsalescreditstatus  decimal(14,2) NOT NULL,
   currentpurchasecreditstatus  decimal(14,2) NOT NULL,
   bankaccountname  varchar(50) NOT NULL,
   bankname  varchar(30) NOT NULL,
   bankaccountno  varchar(30) NOT NULL,
   isdealer  smallint(1) NOT NULL,
   isprospect  smallint(1) NOT NULL,
   employeecount  int(11) NOT NULL,
   alternatename  varchar(40) NOT NULL,
   companyno  varchar(20) NOT NULL,
   industry_id  int(11) NOT NULL,
   tooltips  varchar(255) NOT NULL,
   salespricelist_id  int(11) NOT NULL,
   purchasepricelist_id  int(11) NOT NULL,
   employee_id  int(11) NOT NULL,
   inchargeperson  varchar(35) NOT NULL,
   isdeleted  smallint(6) NOT NULL,
  PRIMARY KEY ( bpartner_id ),
  UNIQUE KEY  bpartner_no  ( bpartner_no , organization_id ),
  KEY  bpartnergroup_id  ( bpartnergroup_id ),
  KEY  currency_id  ( currency_id ),
  KEY  terms_id  ( terms_id ),
  KEY  organization_id  ( organization_id ),
  KEY  tax_id  ( tax_id ),
  KEY  creditoraccounts_id  ( creditoraccounts_id ),
  KEY  debtoraccounts_id  ( debtoraccounts_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE bpartnergroup  (
   bpartnergroup_id  int(11) NOT NULL AUTO_INCREMENT,
   bpartnergroup_name  varchar(50) NOT NULL,
   isactive  smallint(6) NOT NULL,
   seqno  smallint(6) NOT NULL,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
   organization_id  int(11) NOT NULL,
   description  varchar(100) NOT NULL,
   debtoraccounts_id  int(11) NOT NULL,
   creditoraccounts_id  int(11) NOT NULL,
   isdeleted  smallint(6) NOT NULL,
  PRIMARY KEY ( bpartnergroup_id ),
  UNIQUE KEY  bpartnergroup_name  ( bpartnergroup_name ),
  KEY  organization_id  ( organization_id ),
  KEY  accounts_id  ( debtoraccounts_id ),
  KEY  creditoraccounts_id  ( creditoraccounts_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE  contacts  (
   contacts_id  int(11) NOT NULL AUTO_INCREMENT,
   contacts_name  varchar(60) NOT NULL,
   alternatename  varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
   greeting  varchar(40) NOT NULL,
   email  varchar(60) NOT NULL,
   hpno  varchar(20) NOT NULL,
   tel_1  varchar(20) NOT NULL,
   tel_2  varchar(20) NOT NULL,
   fax  varchar(20) NOT NULL,
   address_id  int(11) NOT NULL,
   position  varchar(30) NOT NULL,
   department  varchar(30) NOT NULL,
   uid  int(11) NOT NULL,
   bpartner_id  int(11) NOT NULL,
   description  varchar(255) NOT NULL,
   organization_id  int(11) NOT NULL,
   created  datetime NOT NULL,
   createdby  smallint(6) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  smallint(6) NOT NULL,
   isactive  smallint(1) NOT NULL,
   seqno  smallint(6) NOT NULL,
   religion_id  int(11) NOT NULL,
   races_id  int(11) NOT NULL,
  PRIMARY KEY ( contacts_id ),
  KEY  organization_id  ( organization_id ),
  KEY  address_id  ( address_id ),
  KEY  uid  ( uid ),
  KEY  bpartner_id  ( bpartner_id ),
  KEY  hpno  ( hpno ),
  KEY  contact_name  ( contacts_name ),
  KEY  religion_id  ( religion_id ),
  KEY  races_id  ( races_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE followup  (
   followup_id  int(11) NOT NULL AUTO_INCREMENT,
   bpartner_id  int(11) NOT NULL,
   followuptype_id  int(11) NOT NULL,
   followup_name  varchar(100) NOT NULL,
   description  text NOT NULL,
   issuedate  date NOT NULL,
   nextfollowupdate  date NOT NULL,
   contactperson  varchar(40) NOT NULL,
   contactnumber  varchar(20) NOT NULL,
   isactive  smallint(6) NOT NULL,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
   employee_id  int(11) NOT NULL,
  PRIMARY KEY ( followup_id ),
  KEY  bpartner_id  ( bpartner_id ),
  KEY  followuptype_id  ( followuptype_id ),
  KEY  nextfollowupdate  ( nextfollowupdate ),
  KEY  issuedate  ( issuedate ),
  KEY  employee_id  ( employee_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE followuptype  (
   followuptype_id  int(11) NOT NULL AUTO_INCREMENT,
   followuptype_name  varchar(40) NOT NULL,
   isactive  smallint(6) NOT NULL,
   seqno  smallint(6) NOT NULL,
   organization_id  int(11) NOT NULL,
   description  varchar(255) NOT NULL,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
  PRIMARY KEY ( followuptype_id ),
  KEY  organization  ( organization_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE industry  (
   industry_id  int(11) NOT NULL AUTO_INCREMENT,
   industry_name  varchar(50) NOT NULL,
   description  text,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
   isactive  smallint(1) NOT NULL,
   seqno  smallint(3) NOT NULL,
   organization_id  int(11) NOT NULL,
   isdeleted  smallint(6) NOT NULL,
  PRIMARY KEY ( industry_id ),
  UNIQUE KEY  industry_name  ( industry_name , organization_id ),
  KEY  organization_id  ( organization_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE terms  (
   terms_id  int(11) NOT NULL AUTO_INCREMENT,
   terms_name  varchar(50) NOT NULL,
   seqno  smallint(6) NOT NULL,
   isactive  smallint(6) NOT NULL,
   created  datetime NOT NULL,
   createdby  int(11) NOT NULL,
   updated  datetime NOT NULL,
   updatedby  int(11) NOT NULL,
   organization_id  int(11) NOT NULL,
   daycount  smallint(6) NOT NULL,
   description  varchar(70) NOT NULL,
  PRIMARY KEY ( terms_id ),
  KEY  organization_id  ( organization_id )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE address   (
    address_id   int(11) NOT NULL AUTO_INCREMENT,
    address_name   varchar(70) NOT NULL,
    isactive   smallint(6) NOT NULL,
    isshipment   smallint(6) NOT NULL,
    isinvoice   smallint(6) NOT NULL,
    created   int(11) NOT NULL,
    createdby   int(11) NOT NULL,
    updated   datetime NOT NULL,
    updatedby   int(11) NOT NULL,
    address_street   varchar(255) NOT NULL,
    address_postcode   varchar(6) NOT NULL,
    address_city   varchar(40) NOT NULL,
    region_id   int(11) NOT NULL,
    country_id   int(11) NOT NULL,
    organization_id   int(11) NOT NULL,
    bpartner_id   int(11) NOT NULL,
    tel_1   varchar(20) NOT NULL,
    tel_2   varchar(20) NOT NULL,
    fax   varchar(30) NOT NULL,
    description   text NOT NULL,
    seqno   smallint(3) NOT NULL,
  PRIMARY KEY (  address_id  ),
  KEY   country_id   (  country_id  ),
  KEY   region_id   (  region_id  ),
  KEY   bpartner_id   (  bpartner_id  ),
  KEY   organization_id   (  organization_id  )
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE bpartner_quotation (
  quotation_id int(11) NOT NULL AUTO_INCREMENT,
  document_no int(20) NOT NULL,
  organization_id int(11) NOT NULL,
  documenttype smallint(1) NOT NULL,
  document_date date NOT NULL,
  amt decimal(12,2) NOT NULL,
  currency_id int(11) NOT NULL,
  exchangerate decimal(12,2) NOT NULL,
  subtotal decimal(12,2) NOT NULL,
  created datetime NOT NULL,
  createdby int(11) NOT NULL,
  updated datetime NOT NULL,
  updatedby int(11) NOT NULL,
  itemqty int(11) NOT NULL,
  ref_no varchar(30) NOT NULL,
  description varchar(255) NOT NULL,
  bpartner_id int(11) NOT NULL,
  iscomplete smallint(1) NOT NULL,
  spquotation_prefix varchar(20) NOT NULL,
  issotrx smallint(1) NOT NULL,
  terms_id int(11) NOT NULL,
  contacts_id int(11) NOT NULL,
  preparedbyuid int(11) NOT NULL,
  salesagentname varchar(70) NOT NULL,
  isprinted smallint(1) NOT NULL,
  localamt decimal(12,2) NOT NULL,
  address_text text NOT NULL,
  address_id int(11) NOT NULL,
  quotation_title varchar(100) NOT NULL,
  note text NOT NULL,
  quotation_status char(1) NOT NULL,
  PRIMARY KEY (quotation_id),
  UNIQUE KEY uniquedocumentno (issotrx,document_no),
  KEY document_no (document_no),
  KEY bpartner_id (bpartner_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table sim_bpartner_quotationline
--

CREATE TABLE bpartner_quotationline (
  quotationline_id int(11) NOT NULL AUTO_INCREMENT,
  quotation_id int(11) NOT NULL,
  subject varchar(60) NOT NULL,
  amt decimal(12,2) NOT NULL,
  qty decimal(12,2) NOT NULL,
  description text NOT NULL,
  uom varchar(10) NOT NULL,
  unitprice decimal(12,4) NOT NULL,
  seqno int(11) NOT NULL,
  uprice decimal(12,4) NOT NULL,
  created datetime NOT NULL,
  createdby int(11) NOT NULL,
  updated datetime NOT NULL,
  updatedby int(11) NOT NULL,
  PRIMARY KEY (quotationline_id),
  KEY subject (subject)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
