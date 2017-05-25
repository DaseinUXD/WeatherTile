ar: Arabic
az: Azerbaijani
be: Belarusian
bg: Bulgarian
bs: Bosnian
ca: Catalan
cs: Czech
de: German
el: Greek
en: English (which is the default)
es: Spanish
et: Estonian
fr: French
hr: Croatian
hu: Hungarian
id: Indonesian
it: Italian
is: Icelandic
kw: Cornish
nb: Norwegian Bokmål
nl: Dutch
pl: Polish
pt: Portuguese
ru: Russian
sk: Slovak
sl: Slovenian
sr: Serbian
sv: Swedish
tet: Tetum
tr: Turkish
uk: Ukrainian
x-pig-latin: Igpay Atinlay
zh: simplified Chinese
zh-tw: traditional Chinese

auto: automatically select units based on geographic location
ca: same as si, except that windSpeed is in kilometers per hour
uk2: same as si, except that nearestStormDistance and visibility are in miles and windSpeed is in miles per hour
us: Imperial units (the default)
si: SI units (International System of Units)

summary: Any summaries containing temperature or snow accumulation units will have their values in degrees Celsius or in centimeters (respectively).
nearestStormDistance: Kilometers.
precipIntensity: Millimeters per hour.
precipIntensityMax: Millimeters per hour.
precipAccumulation: Centimeters.
temperature: Degrees Celsius.
temperatureMin: Degrees Celsius.
temperatureMax: Degrees Celsius.
apparentTemperature: Degrees Celsius.
dewPoint: Degrees Celsius.
windSpeed: Meters per second.
pressure: Hectopascals.
visibility: Kilometers.


 
    
    

    
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box">
      <h1>Response Format</h1>

<p>API responses consist of a UTF-8-encoded, JSON-formatted object with the following properties:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">latitude</span> <span class="optional">required</span><div class="description">The requested latitude.</div></li>
  <li class="parameter"><span class="code">longitude</span> <span class="optional">required</span><div class="description">The requested longitude.</div></li>
  <li class="parameter"><span class="code">timezone</span> <span class="example">(e.g. <code>America/New_York</code>)</span> <span class="optional">required</span><div class="description">The IANA timezone name for the requested location. This is used for text summaries and for determining when <code>hourly</code> and <code>daily</code> data block objects begin.</div></li>
  <li class="parameter"><span class="code">offset</span> <span class="deprecated">deprecated</span><div class="description">The current timezone offset in hours. (Use of this property will almost certainly result in Daylight Saving Time bugs. Please use <code>timezone</code>, instead.)</div></li>
  <li class="parameter"><span class="code">currently</span> <span class="optional">optional</span><div class="description">A <a href="#data-point">data point</a> containing the current weather conditions at the requested location.</div></li>
  <li class="parameter"><span class="code">minutely</span> <span class="optional">optional</span><div class="description">A <a href="#data-block">data block</a> containing the weather conditions minute-by-minute for the next hour.</div></li>
  <li class="parameter"><span class="code">hourly</span> <span class="optional">optional</span><div class="description">A <a href="#data-block">data block</a> containing the weather conditions hour-by-hour for the next two days.</div></li>
  <li class="parameter"><span class="code">daily</span> <span class="optional">optional</span><div class="description">A <a href="#data-block">data block</a> containing the weather conditions day-by-day for the next week.</div></li>
  <li class="parameter"><span class="code">alerts</span> <span class="optional">optional</span><div class="description">An <a href="#alerts">alerts array</a>, which, if present, contains any severe weather alerts pertinent to the requested location.</div></li>
  <li class="parameter"><span class="code">flags</span> <span class="optional">optional</span><div class="description">A <a href="#flags">flags object</a> containing miscellaneous metadata about the request.</div></li>
</ul>

<h2 id="data-point">Data Point Object</h2>

<p>A <em>data point</em> object contains various properties, each representing the average (unless otherwise specified) of a particular weather phenomenon occurring during a period of time: an instant in the case of <code>currently</code>, a minute for <code>minutely</code>, an hour for <code>hourly</code>, and a day for <code>daily</code>. These properties are:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">apparentTemperature</span> <span class="optional">optional, not on <code>daily</code></span><div class="description">The apparent (or &ldquo;feels like&rdquo;) temperature in degrees Fahrenheit.</div></li>
  <li class="parameter"><span class="code">apparentTemperatureMax</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The maximum value of <code>apparentTemperature</code> during a given day.</div></li>
  <li class="parameter"><span class="code">apparentTemperatureMaxTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when <code>apparentTemperatureMax</code> occurs during a given day.</div></li>
  <li class="parameter"><span class="code">apparentTemperatureMin</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The minimum value of <code>apparentTemperature</code> during a given day.</div></li>
  <li class="parameter"><span class="code">apparentTemperatureMinTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when <code>apparentTemperatureMin</code> occurs during a given day.</div></li>
  <li class="parameter"><span class="code">cloudCover</span> <span class="optional">optional</span><div class="description">The percentage of sky occluded by clouds, between <code>0</code> and <code>1</code>, inclusive.</div></li>
  <li class="parameter"><span class="code">dewPoint</span> <span class="optional">optional</span><div class="description">The dew point in degrees Fahrenheit.</div></li>
  <li class="parameter"><span class="code">humidity</span> <span class="optional">optional</span><div class="description">The relative humidity, between <code>0</code> and <code>1</code>, inclusive.</div></li>
  <li class="parameter"><span class="code">icon</span> <span class="optional">optional</span><div class="description">A machine-readable text summary of this data point, suitable for selecting an icon for display. If defined, this property will have one of the following values: <code>clear-day</code>, <code>clear-night</code>, <code>rain</code>, <code>snow</code>, <code>sleet</code>, <code>wind</code>, <code>fog</code>, <code>cloudy</code>, <code>partly-cloudy-day</code>, or <code>partly-cloudy-night</code>. (Developers should ensure that a sensible default is defined, as additional values, such as <code>hail</code>, <code>thunderstorm</code>, or <code>tornado</code>, may be defined in the future.)</div></li>
  <li class="parameter"><span class="code">moonPhase</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The fractional part of the <a href="https://en.wikipedia.org/wiki/Lunation_Number">lunation number</a> during the given day: a value of <code>0</code> corresponds to a new moon, <code>0.25</code> to a first quarter moon, <code>0.5</code> to a full moon, and <code>0.75</code> to a last quarter moon. (The ranges in between these represent waxing crescent, waxing gibbous, waning gibbous, and waning crescent moons, respectively.)</div></li>
  <li class="parameter"><span class="code">nearestStormBearing</span> <span class="optional">optional, only on <code>currently</code></span><div class="description">The approximate direction of the nearest storm in degrees, with true north at 0&deg; and progressing clockwise. (If <code>nearestStormDistance</code> is zero, then this value will not be defined.)</div></li>
  <li class="parameter"><span class="code">nearestStormDistance</span> <span class="optional">optional, only on <code>currently</code></span><div class="description">The approximate distance to the nearest storm in miles. (A storm distance of <code>0</code> doesn&rsquo;t necessarily refer to a storm at the requested location, but rather a storm in the vicinity of that location.)</div></li>
  <li class="parameter"><span class="code">ozone</span> <span class="optional">optional</span><div class="description">The columnar density of total atmospheric ozone at the given time in Dobson units.</div></li>
  <li class="parameter"><span class="code">precipAccumulation</span> <span class="optional">optional, only on <code>hourly</code> and <code>daily</code></span><div class="description">The amount of snowfall accumulation expected to occur, in inches. (If no snowfall is expected, this property will not be defined.)</div></li>
  <li class="parameter"><span class="code">precipIntensity</span> <span class="optional">optional</span><div class="description">The intensity (in inches of liquid water per hour) of precipitation occurring at the given time. This value is <em>conditional on probability</em> (that is, assuming any precipitation occurs at all) for <code>minutely</code> data points, and unconditional otherwise.</div></li>
  <li class="parameter"><span class="code">precipIntensityMax</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The maximum value of <code>precipIntensity</code> during a given day.</div></li>
  <li class="parameter"><span class="code">precipIntensityMaxTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when <code>precipIntensityMax</code> occurs during a given day.</div></li>
  <li class="parameter"><span class="code">precipProbability</span> <span class="optional">optional</span><div class="description">The probability of precipitation occurring, between <code>0</code> and <code>1</code>, inclusive.</div></li>
  <li class="parameter"><span class="code">precipType</span> <span class="optional">optional</span><div class="description">The type of precipitation occurring at the given time. If defined, this property will have one of the following values: <code>"rain"</code>, <code>"snow"</code>, or <code>"sleet"</code> (which refers to each of freezing rain, ice pellets, and &ldquo;wintery mix&rdquo;). (If <code>precipIntensity</code> is zero, then this property will not be defined.)</div></li>
  <li class="parameter"><span class="code">pressure</span> <span class="optional">optional</span><div class="description">The sea-level air pressure in millibars.</div></li>
  <li class="parameter"><span class="code">summary</span> <span class="optional">optional</span><div class="description">A human-readable text summary of this data point. (This property has millions of possible values, so don&rsquo;t use it for automated purposes: use the <code>icon</code> property, instead!)</div></li>
  <li class="parameter"><span class="code">sunriseTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when the sun will rise during a given day.</div></li>
  <li class="parameter"><span class="code">sunsetTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when the sun will set during a given day.</div></li>
  <li class="parameter"><span class="code">temperature</span> <span class="optional">optional, not on <code>minutely</code></span><div class="description">The air temperature in degrees Fahrenheit.</div></li>
  <li class="parameter"><span class="code">temperatureMax</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The maximum value of <code>temperature</code> during a given day.</div></li>
  <li class="parameter"><span class="code">temperatureMaxTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when <code>temperatureMax</code> occurs during a given day.</div></li>
  <li class="parameter"><span class="code">temperatureMin</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The minimum value of <code>temperature</code> during a given day.</div></li>
  <li class="parameter"><span class="code">temperatureMinTime</span> <span class="optional">optional, only on <code>daily</code></span><div class="description">The UNIX time of when <code>temperatureMin</code> occurs during a given day.</div></li>
  <li class="parameter"><span class="code">time</span> <span class="optional">required</span><div class="description">The UNIX time at which this data point begins. <code>minutely</code> data point are always aligned to the top of the minute, <code>hourly</code> data point objects to the top of the hour, and <code>daily</code> data point objects to midnight of the day, all according to the local time zone.</div></li>
  <li class="parameter"><span class="code">visibility</span> <span class="optional">optional</span><div class="description">The average visibility in miles, capped at 10 miles.</div></li>
  <li class="parameter"><span class="code">windBearing</span> <span class="optional">optional</span><div class="description">The direction that the wind is coming <em>from</em> in degrees, with true north at 0&deg; and progressing clockwise. (If <code>windSpeed</code> is zero, then this value will not be defined.)</div></li>
  <li class="parameter"><span class="code">windSpeed</span> <span class="optional">optional</span><div class="description">The wind speed in miles per hour.</div></li>
</ul>

<h2 id="data-block">Data Block Object</h2>

<p>A <em>data block</em> object represents the various weather phenomena occurring over a period of time. Such objects contain the following properties:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">data</span> <span class="optional">required</span><div class="description">An array of <a href="#data-point">data points</a>, ordered by time, which together describe the weather conditions at the requested location over time.</div></li>
  <li class="parameter"><span class="code">summary</span> <span class="optional">optional</span><div class="description">A human-readable summary of this data block.</div></li>
  <li class="parameter"><span class="code">icon</span> <span class="optional">optional</span><div class="description">A machine-readable text summary of this data block. (May take on the same values as the <code>icon</code>property of <a href="#data-point">data points</a>.)</div></li>
</ul>

<h2 id="alerts">Alerts Array</h2>

<p>The <em>alerts array</em> contains objects representing the severe weather warnings issued for the requested location by a governmental authority (please see our <a href="/dev/docs/sources">data sources page</a> for a list of sources). Objects in the alerts array contain the following properties:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">description</span> <span class="optional">required</span><div class="description">A detailed description of the alert.</div></li>
  <li class="parameter"><span class="code">expires</span> <span class="optional">optional</span><div class="description">The UNIX time at which the alert will expire. (Some alerts sources, unfortunately, do not define expiration time, and in these cases this parameter will not be defined.)</div></li>
  <li class="parameter"><span class="code">regions</span> <span class="optional">required</span><div class="description">An array of strings representing the names of the regions covered by this weather alert.</div></li>
  <li class="parameter"><span class="code">severity</span> <span class="optional">required</span><div class="description">The severity of the weather alert. Will take one of the following values: <code>"advisory"</code> (an individual should be aware of potentially severe weather), <code>"watch"</code> (an individual should prepare for potentially severe weather), or <code>"warning"</code> (an individual should take immediate action to protect themselves and others from potentially severe weather).</div></li>
  <li class="parameter"><span class="code">time</span> <span class="optional">required</span><div class="description">The UNIX time at which the alert was issued.</div></li>
  <li class="parameter"><span class="code">title</span> <span class="optional">required</span><div class="description">A brief description of the alert.</div></li>
  <li class="parameter"><span class="code">uri</span> <span class="optional">required</span><div class="description">An HTTP(S) URI that one may refer to for detailed information about the alert.</div></li>
</ul>

<h2 id="flags">Flags Object</h2>

<p>The <em>flags object</em> contains various metadata information related to the request. This object may optionally contain any of the following properties:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">darksky-unavailable</span> <span class="optional">optional</span><div class="description">The presence of this property indicates that the Dark Sky data source supports the given location, but a temporary error (such as a radar station being down for maintenance) has made the data unavailable.</div></li>
  <li class="parameter"><span class="code">sources</span> <span class="optional">required</span><div class="description">This property contains an array of IDs for each <a href="sources">data source</a> utilized in servicing this request.</div></li>
  <li class="parameter"><span class="code">units</span> <span class="optional">required</span><div class="description">Indicates the units which were used for the data in this request.</div></li>
</ul>

<h2 id="response">Response Headers</h2>

<p>The API will set the following HTTP response headers to values useful to developers:</p>

<ul class="parameters">
  <li class="parameter"><span class="code">Cache-Control</span> <span class="optional">optional</span><div class="description">Set to a conservative value for data caching purposes based on the data present in the response body.</div></li>
  <li class="parameter"><span class="code">Expires</span> <span class="deprecated">deprecated</span><div class="description">Set to a conservative value for data caching purposes based on
the data present in the response body.</div></li>
  <li class="parameter"><span class="code">X-Forecast-API-Calls</span> <span class="optional">optional</span><div class="description">The number of API requests made by the given API key for today.</div></li>
  <li class="parameter"><span class="code">X-Response-Time</span> <span class="optional">optional</span><div class="description">The server-side response time of the request.</div></li>
</ul>

<h2>Notes</h2>

<ul>
  <li>Never make any assumptions about the presence of data or lengths of arrays. For example, a lack of data in our data sources may cause data to be missing; or Daylight Savings Time may cause a day to consist of 23 or 25 hours (instead of the usual 24); or, at high latitudes, a given day may not have a sunrise or sunset. <em>Always</em> check for the presence of data before trying to use it.</li>
  <li>Summaries on the <code>hourly</code> data block actually only cover up to a maximum of 24 hours, rather than the full time period in the data block. We found that covering the full 48 hours could be, in a number of circumstances, far too wordy to be practical.</li>
  <li>Summaries and icons on <code>daily</code> data point objects actually cover the period from 4AM to 4AM, rather than the stated time period of midnight to midnight. We found that the summaries so generated were less awkward.</li>
  <li>The Forecast Data API supports HTTP compression. We heartily recommend using it, as it will make responses much smaller over the wire. To enable it, simply add an <code>Accept-Encoding: gzip</code> header to your request. (Most HTTP client libraries wrap this functionality for you, please consult your library&rsquo;s documentation for details.)</li>
</ul>

    </div>
  </div>
</div>

    </div>

    <div id="footer">
      <ul>
        <li><a href="https://darksky.net">Dark Sky</a></li>
        <li><a href="mailto:info@darksky.net">Inquiries</a></li>
        <li><a href="mailto:developer@darksky.net">Support</a></li>
        <li><a href="/dev/docs/terms">Terms of Service</a></li>
        <li><a href="/dev/docs/privacy">Privacy Policy</a></li>
      </ul>
      <div class="copyright">
        <span class="copyright">&copy;2012&ndash;6 The Dark Sky Company, LLC.&nbsp;</span>
        <span class="trademark">"Dark Sky" and the raindrop logo are trademarks of The Dark Sky Company, LLC.</span>
      </div>
    </div>
    
  </body>