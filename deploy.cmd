set widget=t11jobwatch
set package=PTmUP5YVYr 
set buildFolder=.\build
set buildResultFolder=%buildFolder%\.buildResult
set profilename=tizencertificate

call npm run build
del %buildFolder%\static\js\*.map
call tizen clean -- %buildFolder%
copy ".\icon.png" %buildFolder%
copy ".\config.xml" %buildFolder%
call tizen build-web -- %buildFolder%
call tizen package --type wgt --sign %profilename% -- %buildResultFolder%
call tizen install -- %buildResultFolder% -n %widget%.wgt
call tizen run -p %package%
