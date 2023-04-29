package jojo

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/vadv/gopher-lua-libs/tests"

	"github.com/waffle-lua/waffle"
)

func TestRouter(t *testing.T) {
	preload := tests.SeveralPreloadFuncs(waffle.PreloadAll)

	assert.NotZero(t, tests.RunLuaTestFile(t, preload, "tests/router.lua"))
}
