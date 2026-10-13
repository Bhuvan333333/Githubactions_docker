import pytest

from calculator import add, sub, mul

def test_add():
    result = add(2,2)
    assert result == 4
def test_sub():
    result = sub(2,2)
    assert result == 0

def test_mul():
    result = mul(2,2)
    assert result == 4
