open Axios_types;

module Headers = {
  type t;

  external fromObj: Js.t({..}) => t = "%identity";
  external fromDict: Js.Dict.t(string) => t = "%identity";
};

external makeResponseTransformer1:
  array('data => 'resultData) => responseTransformer('data, 'resultData) =
  "%identity";

let makeResponseTransformer1 = f => makeResponseTransformer1([|f|]);

external makeResponseTransformer2:
  (('data => 'data0, 'data0 => 'resultData)) =>
  responseTransformer('data, 'resultData) =
  "%identity";

let makeResponseTransformer2 = (f0, f1) =>
  makeResponseTransformer2((f0, f1));

external makeResponseTransformer3:
  (('data => 'data0, 'data0 => 'data1, 'data1 => 'resultData)) =>
  responseTransformer('data, 'resultData) =
  "%identity";

let makeResponseTransformer3 = (f0, f1, f2) =>
  makeResponseTransformer3((f0, f1, f2));

external makeResponseTransformer4:
  (
    (
      'data => 'data0,
      'data0 => 'data1,
      'data1 => 'data2,
      'data2 => 'resultData,
    )
  ) =>
  responseTransformer('data, 'resultData) =
  "%identity";

let makeResponseTransformer4 = (f0, f1, f2, f3) =>
  makeResponseTransformer4((f0, f1, f2, f3));

external makeResponseTransformer5:
  (
    (
      'data => 'data0,
      'data0 => 'data1,
      'data1 => 'data2,
      'data2 => 'data3,
      'data3 => 'resultData,
    )
  ) =>
  responseTransformer('data, 'resultData) =
  "%identity";

let makeResponseTransformer5 = (f0, f1, f2, f3, f4) =>
  makeResponseTransformer5((f0, f1, f2, f3, f4));

external makeRequestTransformer1:
  array(('data, Headers.t) => 'resultData) =>
  requestTransformer('data, Headers.t, 'resultData) =
  "%identity";

let makeRequestTransformer1 = f => makeRequestTransformer1([|f|]);

external makeRequestTransformer2:
  ((('data, Headers.t) => 'data0, ('data0, Headers.t) => 'resultData)) =>
  requestTransformer('data, Headers.t, 'resultData) =
  "%identity";

let makeRequestTransformer2 = (f0, f1) => makeRequestTransformer2((f0, f1));

external makeRequestTransformer3:
  (
    (
      ('data, Headers.t) => 'data0,
      ('data0, Headers.t) => 'data1,
      ('data1, Headers.t) => 'resultData,
    )
  ) =>
  requestTransformer('data, Headers.t, 'resultData) =
  "%identity";

let makeRequestTransformer3 = (f0, f1, f2) =>
  makeRequestTransformer3((f0, f1, f2));

external makeRequestTransformer4:
  (
    (
      ('data, Headers.t) => 'data0,
      ('data0, Headers.t) => 'data1,
      ('data1, Headers.t) => 'data2,
      ('data2, Headers.t) => 'resultData,
    )
  ) =>
  requestTransformer('data, Headers.t, 'resultData) =
  "%identity";

let makeRequestTransformer4 = (f0, f1, f2, f3) =>
  makeRequestTransformer4((f0, f1, f2, f3));

external makeRequestTransformer5:
  (
    (
      ('data, Headers.t) => 'data0,
      ('data0, Headers.t) => 'data1,
      ('data1, Headers.t) => 'data2,
      ('data2, Headers.t) => 'data3,
      ('data3, Headers.t) => 'resultData,
    )
  ) =>
  requestTransformer('data, Headers.t, 'resultData) =
  "%identity";

let makeRequestTransformer5 = (f0, f1, f2, f3, f5) =>
  makeRequestTransformer5((f0, f1, f2, f3, f5));

@val @module("axios") 
external cancelToken: canceltoken = "CancelToken";

@send external source: (canceltoken) => cancelsource = "source";

@get external token: (cancelsource) => token = "token";
@send external cancel: (cancelsource) => unit = "cancel";
 @module("axios") external isCancel: ('err) => bool = "isCancel";

@obj
external makeConfig:
  (
    ~url: string=?,
    ~_method: string=?,
    ~baseURL: string=?,
    ~transformRequest: requestTransformer(
                         'postData,
                         Headers.t,
                         'resultPostData,
                       )
                         =?,
    ~transformResponse: responseTransformer('data, 'resultData)=?,
    ~headers: Headers.t=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('postData)=?,
    ~timeout: int=?,
    ~cancelToken: token=?,
    ~withCredentials: bool=?,
    ~adapter: adapter('a, 'b)=?,
    ~auth: auth=?,
    ~responseType: string=?,
    ~xsrfCookieName: string=?,
    ~xsrfHeaderName: string=?,
    ~onUploadProgress: onProgress=?,
    ~onDownloadProgress: onProgress=?,
    ~maxContentLength: int=?,
    ~validateStatus: validateStatus=?,
    ~maxRedirects: int=?,
    ~socketPath: string=?,
    ~proxy: proxy=?,
    ~httpAgent: Axios_agent.Http.t=?,
    ~httpsAgent: Axios_agent.Https.t=?,
    unit
  ) =>
  config =
  "";

@obj
external makeConfigWithUrl:
  (
    ~url: string,
    ~_method: string=?,
    ~baseURL: string=?,
    ~transformRequest: requestTransformer(
                         'postData,
                         Headers.t,
                         'resultPostData,
                       )
                         =?,
    ~transformResponse: responseTransformer('data, 'resultData)=?,
    ~headers: Headers.t=?,
    ~params: Js.t('params)=?,
    ~paramsSerializer: paramsSerializer('params)=?,
    ~data: Js.t('postData)=?,
    ~timeout: int=?,
    ~cancelToken: token=?,
    ~withCredentials: bool=?,
    ~adapter: adapter('a, 'b)=?,
    ~auth: auth=?,
    ~responseType: string=?,
    ~xsrfCookieName: string=?,
    ~xsrfHeaderName: string=?,
    ~onUploadProgress: onProgress=?,
    ~onDownloadProgress: onProgress=?,
    ~maxContentLength: int=?,
    ~validateStatus: validateStatus=?,
    ~maxRedirects: int=?,
    ~socketPath: string=?,
    ~proxy: proxy=?,
    ~httpAgent: Axios_agent.Http.t=?,
    ~httpsAgent: Axios_agent.Https.t=?,
    unit
  ) =>
  configWithUrl =
  "";

@module("axios")
external all:
  array(Js.Promise.t(response(_, _))) =>
  Js.Promise.t(array(response(_, _))) =
  "";

 @module("axios")
external all2:
  (
    (Js.Promise.t(response('a0, 'b0)), Js.Promise.t(response('a1, 'b1)))
  ) =>
  Js.Promise.t((response('a0, 'b0), response('a1, 'b1))) =
  "all";

 @module("axios")
external all3:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
    )
  ) =>
  Js.Promise.t(
    (response('a0, 'b0), response('a1, 'b1), response('a2, 'b2)),
  ) =
  "all";

 @module("axios")
external all4:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
    )
  ) =>
  Js.Promise.t(
  (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
    ),
  ) =
  "all";

 @module("axios")
external all5:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
    ),
  ) =
  "all";

 @module("axios")
external all6:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
    ),
  ) =
  "all";

 @module("axios")
external all7:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
    ),
  ) =
  "all";

 @module("axios")
external all8:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
    ),
  ) =
  "all";

 @module("axios")
external all9:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8),
    ),
  ) =
  "all";

 @module("axios")
external all10:
  (
    (
      Js.Promise.t(response('a0, 'b0)),
      Js.Promise.t(response('a1, 'b1)),
      Js.Promise.t(response('a2, 'b2)),
      Js.Promise.t(response('a3, 'b3)),
      Js.Promise.t(response('a4, 'b4)),
      Js.Promise.t(response('a5, 'b5)),
      Js.Promise.t(response('a6, 'b6)),
      Js.Promise.t(response('a7, 'b7)),
      Js.Promise.t(response('a8, 'b8)),
      Js.Promise.t(response('a9, 'b9)),
    )
  ) =>
  Js.Promise.t(
    (
      response('a0, 'b0),
      response('a1, 'b1),
      response('a2, 'b2),
      response('a3, 'b3),
      response('a4, 'b4),
      response('a5, 'b5),
      response('a6, 'b6),
      response('a7, 'b7),
      response('a8, 'b8),
      response('a9, 'b9),
    ),
  ) =
  "all";

 @module("axios")
external request: configWithUrl => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external get: string => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external getc: (string, config) => Js.Promise.t(response('a, 'b)) = "get";

 @module("axios")
external delete: string => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external deletec: (string, config) => Js.Promise.t(response('a, 'b)) =
  "delete";

 @module("axios")
external post: string => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external postData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "post";

 @module("axios")
external postDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "post";

 @module("axios")
external put: string => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external putData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "put";

@module("axios")
external putDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "put";

 @module("axios")
external patch: string => Js.Promise.t(response('a, 'b)) = "";

 @module("axios")
external patchData: (string, Js.t('a)) => Js.Promise.t(response('b, 'c)) =
  "patch";

 @module("axios")
external patchDatac:
  (string, Js.t('a), config) => Js.Promise.t(response('b, 'c)) =
  "patch";

module Instance = Axios_instance;
module Agent = Axios_agent;