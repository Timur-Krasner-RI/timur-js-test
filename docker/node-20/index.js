const http = require('http');

const port = Number(process.env.PORT || 3000);

const server = http.createServer((_req, res) => {
	res.writeHead(200, { 'Content-Type': 'text/plain' });
	res.end(`timur-js-test node-20 demo (node ${process.version})\n`);
});

server.listen(port, () => {
	console.log(`listening on ${port}`);
});
