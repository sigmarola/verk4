<h1>{{title}}</h1>

% for i in gogn['results']:
	<h3>{{i['shortName']}}</h3>
	<h4>{{i['longName']}}</h4>
	<hr>
	<h4>{{i['value']}}</h4>
	<hr style="border: 5px solid;">
% end
