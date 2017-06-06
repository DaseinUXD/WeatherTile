/// <reference path="./typings/phantomjs/phantomjs.d.ts"/>
/** The PhantomJS server */
var Server = (function () {
    /** @constructor */
    function Server() {
        var _this = this;
        this.server = require("webserver").create();
        this.system = require("system");
        /**
         * Read the command line arguments looking for the port number
         * @returns {number} The port number to listen on
         */
        this.readCommandLineArguments = function () {
            // validate command line arguments
            if (_this.system.args.length !== 2) {
                console.log("usage: phantomjs server.js <port>");
                phantom.exit(1);
            }
            return +_this.system.args[1];
        };
        /**
         * Handle an incoming request to generat a PDF
         * @param {any} request - The request object. request.post has the POST body as JSON
         * @param {any} reponse - The response object.
         **/
        this.requestHandler = function (request, response) {
            response.statusCode = 200;
            response.headers = {
                "Cache": "no-cache",
                "Content-Type": "application/pdf"
            };
            response.setEncoding("binary");
            // get the post body
            var data = JSON.parse(request.post);
            // call render, and write the result to the response stream
            _this.render(data, function (pdf) {
                response.write(pdf);
                response.close();
            });
        };
        /**
         * Call the URL and render the result as a PDF
         * @param {IRequestOptions} options - The request options
         * @param {any} callback - Success callback
         */
        this.render = function (options, callback) {
            var fs = require("fs");
            // get a random filename to save to
            var tempFile = "pdfs/" + Math.random().toString(36).substr(2, 5) + ".pdf";
            // set up the initial page defaults
            var page = _this.initializePdfPageDefaults(options.title, options.name);
            // open the URL to render
            page.open(options.url, function (status) {
                if (status === "success") {
                    page.render(tempFile);
                    var pdf = fs.read(tempFile, 'b');
                    callback(pdf);
                }
                else {
                    console.log("Unable to open report page: " + status);
                }
            });
        };
        /**
         * Set up the PDF page with the the right size, margins, and headers and footers
         * @param {string} title - Report title
         * @param {string} name - The user's full name. Just to demonstrate how to set something in the header dynamically
         * @returns {WebPage} - A blank page
         */
        this.initializePdfPageDefaults = function (title, name) {
            // create a page
            var page = require("webpage").create();
            var header = "<div style=\"font-family: Helvetica, Arial, sans-serif; border-bottom: 1px solid black;\">\n                         <span style=\"font-weight: bold\">" + title + "</span><br/>\n                         Created By: " + name + "\n                         <div style=\"color: #2E528B; display: block; float: right; font-weight: bold; font-size: 22px; text-decoration: none; margin-top: -20px\">Logo<sup>&reg;</sup></div>\n                      </div>";
            page.viewportSize = { width: 1024, height: 1024 };
            page.paperSize = {
                format: "Letter",
                border: "1cm",
                footer: {
                    height: "1cm",
                    contents: phantom.callback(function (pageNum, numPages) {
                        return "<div style=\"display:block\"><span style=\"font-size:10px; font-style:italic\">This is a footer that is appended to the bottom of every page. It's useful for copyrights and legal notices</span></div>";
                    })
                },
                header: {
                    height: "4cm",
                    contents: phantom.callback(function (pageNum, numPages) {
                        return header;
                    })
                }
            };
            return page;
        };
        /**
         * Called when an error occurs. This exits the script
         * @param {any} msg - The error message
         * @param {any} trace - Error trace
         */
        this.onError = function (msg, trace) {
            console.error(msg);
            phantom.exit(1);
        };
        // read the port from the command line
        var port = this.readCommandLineArguments();
        // set up the error handler
        phantom.onError = this.onError;
        // start the server. each request gets handled by this.requestHandler()
        var result = this.server.listen(port, this.requestHandler);
        if (!result) {
            console.log("Couldn't start web server");
            phantom.exit(1);
        }
        console.log("Listening on port " + port);
    }
    return Server;
}());
// create a new server
var server = new Server();
