'use strict';

// This service worker is currently minimal as the core PDF handling logic
// has been migrated to declarativeNetRequest rules in rules.json.
// Add any further background logic needed for Manifest V3 here.

chrome.runtime.onInstalled.addListener(() => {
  console.log('"No PDF Download" extension installed (Manifest V3).');
});
