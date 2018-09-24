
<!DOCTYPE html>
<html>
<head>
<h1>{{title}}</h1>
</head>
<body>
% if pge == True:
    <a href='/api'>API</a>
% else:
    <a href='/json'>JSON</a>
% end

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
<style>
table, th, td {
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
    border-style: solid;
}
</style>
