/* Offline cache for the Arabic Honorifics task pane.

An Office task pane is a web page that Word loads from a URL, so it needs the
network the first time it opens. After that everything it needs is in here and
it opens without a connection.

office.js is cross-origin and answers without CORS headers, so it is fetched
no-cors and stored as an opaque response. That is enough to serve it back as a
script, but it means we cannot inspect it -- hence the separate try/catch: a
failure to cache office.js must not sink the whole install.
*/
var CACHE = "ahc-addin-v1";
var LOCAL = ["./", "./taskpane.html", "./commands.html",
             "./icon-16.png", "./icon-32.png", "./icon-80.png"];
var OFFICE = "https://appsforoffice.microsoft.com/lib/1/hosted/office.js";

self.addEventListener("install", function (e) {
  e.waitUntil(caches.open(CACHE).then(function (c) {
    return c.addAll(LOCAL).then(function () {
      return fetch(OFFICE, { mode: "no-cors" })
        .then(function (r) { return c.put(OFFICE, r); })
        .catch(function () { /* first open just stays online */ });
    });
  }).then(function () { return self.skipWaiting(); }));
});

self.addEventListener("activate", function (e) {
  e.waitUntil(caches.keys().then(function (keys) {
    return Promise.all(keys.map(function (k) {
      return k === CACHE ? null : caches.delete(k);
    }));
  }).then(function () { return self.clients.claim(); }));
});

self.addEventListener("fetch", function (e) {
  if (e.request.method !== "GET") return;
  // Cache first: the pane is static, and opening instantly offline is the
  // whole point. A background refresh keeps it current when there is a network.
  e.respondWith(caches.match(e.request).then(function (hit) {
    var live = fetch(e.request).then(function (res) {
      if (res && (res.ok || res.type === "opaque")) {
        var copy = res.clone();
        caches.open(CACHE).then(function (c) { c.put(e.request, copy); });
      }
      return res;
    }).catch(function () { return hit; });
    return hit || live;
  }));
});
