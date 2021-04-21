// https://nodejs.org/api/http.html#http_class_http_agent
module Http = {
  type t;

  @deriving abstract
  type config = {
   @optional 
    keepAlive: bool,
   @optional 
    keepAliveMsecs: int,
   @optional 
    maxSockets: int,
   @optional 
    maxFreeSockets: int,
   @optional 
    timeout: int,
  };

  @module("http") @new external create: config => t = "Agent";
};

// https://nodejs.org/api/https.html#https_class_https_agent
module Https = {
  type t;

  @deriving abstract
  type config = {
   @optional 
    ca: string,
   @optional 
    cert: string,
   @optional 
    ciphers: string,
   @optional 
    clientCertEngine: string,
   @optional 
    crl: string,
   @optional 
    dhparam: string,
   @optional 
    ecdhCurve: string,
   @optional 
    honorCipherOrder: bool,
   @optional 
    key: string,
   @optional 
    keepAlive: bool,
   @optional 
    keepAliveMsecs: int,
   @optional 
    maxSockets: int,
   @optional 
    maxFreeSockets: int,
   @optional 
    maxCachedSessions: int,
   @optional 
    passphrase: string,
   @optional 
    pfx: string,
   @optional 
    rejectUnauthorized: bool,
   @optional 
    secureOptions: int,
   @optional 
    secureProtocol: string,
   @optional 
    servername: string,
   @optional 
    sessionIdContext: string,
   @optional 
    timeout: int,
  };

  @module("https") @new external create: config => t = "Agent";
};
