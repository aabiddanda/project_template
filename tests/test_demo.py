"""Test setup."""

from hypothesis import given
import hypothesis.strategies as st
import sys
import os

sys.path.append(os.path.realpath(os.path.dirname(__file__) + "/../src/"))
import demo  # noqa: E402


@given(st.integers())
def test_add_subtract(x):
    """Test for the +1 - 1 yielding the argument."""
    assert (demo.simple(x) - 1) == x


@given(st.integers())
def test_add(x):
    """Test for the simple addition."""
    assert demo.simple(x) == x + 1
