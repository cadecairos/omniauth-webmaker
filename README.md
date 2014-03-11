# OmniAuth Webmaker

An OmniAuth Strategy for logging in via webmaker's login server.

## Installation

    gem install omniauth-webmaker

## Usage

TODO

### Basic Case

TODO

### Better Integration

TODO

## Options

These are the options you can specify that are relevant to Omniauth Webmaker:

* `:login_server_url` - The URL the login server resides at, including basic auth credentials and path to authenticate route (defaults to `http://testuser:password@localhost:3000/api/user/authenticate`)
* `:name` - The URL at which the strategy will be available (defaults to `webmaker`)
* `:audience_url` - The host of your site. Defaults to the `full_host` of OmniAuth (either automatically determined or determined by the `OmniAuth.config.full_host` option)

## License

Copyright (c) 2014 Christopher De Cairos

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### Based on [omniauth-browserid](https://github.com/intridea/omniauth-browserid)
