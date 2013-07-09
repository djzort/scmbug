The web reports can be configured in four different ways

1) Update the WebReports.conf file with the required values
2) Implement the interfaces in CustomData.pm to overwrite the default behaviuor
   [This enables easier upgrade to newer versions by keeping your own CustonData.pm]
3) Edit the perl scripts directly
   [This is discouraged as it will make upgrade of your system harder in the future]
4) Write your own reports and redirect the first page link in WebReports.conf
