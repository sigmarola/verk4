
<!DOCTYPE html>
<html>
<head>
<h1>{{title}}</h1>
<link rel="stylesheet" type="text/css" href="static/styles.css">
</head>
<body>
% if pge == True:
    <a href='/api'>API</a>
% else:
    <a href='/json'>JSON</a>
% end
<hr>
<table>
% for i in gogn['results']:
	    <tr>
	        <th>{{i['longName']}}</th>
	        <th>{{i['shortName']}}</td>
	        <td>{{i['value']}}</td>
	    </tr>
% end
</table>
</body>
</html>
