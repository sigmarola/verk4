
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

% for i in gogn['results']:
    <table>
	    <tr>
	        <th>{{i['longName']}}</th>
	    </tr>
	    <tr>
	        <td>
	            <span>{{i['shortName']}}</span>
	            <span>{{i['value']}}</span>
	        </td>
	    </tr>
	</table>
	<hr>
% end
</body>
</html>
<style>
table, th, td {
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
span {
    padding-right: 2em;
}
</style>
