**Getting Started**

1.  Install node: http://nodejs.org/download/
2.  In the root of the directory:
     
    > npm install
3.  To compile coffee + jsx files to virtual-dom:
    
    > watchify src/browser.coffee -t coffeeify -t [ mercury-jsxify --extension coffee ] -o dist/wikifactory.js -v
4.  Everytime you make a change to a module required by browser.coffee, the javascript output in dist/wikifactory.js will be updated.
5.  In the browser go to:

     > file://path/to/repo/index.html


[![Join the chat at https://gitter.im/wikifactory/wikifactory-ui](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/wikifactory/wikifactory-ui?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)