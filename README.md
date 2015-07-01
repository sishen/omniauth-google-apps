# Notice.

:warning:  Google has dropped OpenID2 support since April 20th, 2015. Therefore **this gem is DEPRECATED** and no longer being maintained. Please use [omniauth-google-oauth2](https://github.com/zquestz/omniauth-google-oauth2) instead. :warning: 

# OmniAuth Google Apps

This is the OmniAuth strategy for authenticating to Google Apps. 

## Basic Usage

    use OmniAuth::Builder do
      # domain is optional attribute
      provider :google_apps #, domain: 'intridea.com'  
    end

## License

Copyright (c) 2011 Dingding Ye.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
