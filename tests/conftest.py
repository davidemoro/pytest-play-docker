from pytest import fixture


@fixture
def http_port():
    return 8080


@fixture
def mock_app(tmpdir):
    def _mock_app(environ, start_response):
        """ self verify mock app """
        import wsgiref
        import json
        request_uri = wsgiref.util.request_uri(environ)
        assert environ['REQUEST_METHOD'].upper() == 'POST'

        post_env = environ.copy()
        post_data = json.loads(
            post_env['wsgi.input'].read(int(post_env['CONTENT_LENGTH'])))
        assert post_data['foo']

        # return fake response
        start_response('200 OK', [('Content-Type', 'application/json')])
        return [
            bytes(json.dumps(dict(
                status='yeah!',
                foo=post_data['foo'],
                request_uri=request_uri)), 'utf-8')
        ]
    return _mock_app


@fixture(autouse=True)
def mock_callback(tmpdir, mock_app, http_port):
    """ mock callback handler """

    from wsgiref.simple_server import make_server
    import multiprocessing
    server = make_server('', 8080, mock_app)
    server_process = multiprocessing.Process(target=server.serve_forever)
    server_process.start()
    yield

    server_process.terminate()
    server_process.join()
    del(server_process)
