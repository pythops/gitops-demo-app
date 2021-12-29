import pytest


@pytest.fixture
def test_client():
    from app import app

    yield app.test_client()


def test_app(test_client):
    response = test_client.get("/")

    assert response.status_code == 200
    assert response.json == {"version": "v2"}
