type configWithUrl;

type config;

type requestTransformer('data, 'headers, 'resultData);

type responseTransformer('data, 'resultData);

type paramsSerializer('a) = Js.t('a) => string;

type canceltoken;
type token;

type cancelsource;

type response('a, 'b) = {
  .
  "data": 'a,
  "status": int,
  "statusText": string,
  "headers": Js.t('b),
  "config": config,
};

type adapter('a, 'b) = config => Js.Promise.t(response('a, 'b));

type auth = {
  .
  "username": string,
  "password": string,
};

type proxy = {
  .
  "host": int,
  "port": int,
  "auth": auth,
};

type progressevent = {
  loaded: int,
  total: int,
  lengthComputable: bool,
};

type onProgress = progressevent => unit;

type validateStatus = int => bool;