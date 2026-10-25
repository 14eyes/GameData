common = require("Base/Common")
require("Actor/ActorCommon")

console = nil
testGod = nil
console = require("Console")

if NG_HSOD_DEBUG then
    testGod = require("Actor/TestActorProxy")
end

main = {}
main.ModuleDic = {}

function main.OnStart()
    print("On Main Started!")
    pcall(function()
        math.randomseed(os.time())
        math.random()
        math.random()
        math.random()
        print("random!")
    end)

    if NG_HSOD_DEBUG then
        testGod:Init()
    end
end

function main.OnLevelLoad(arg1, arg2)
    currSceneData = sceneData:LoadScene(arg2)
    if NG_HSOD_DEBUG then
        testGod:OnSceneLoaded()
    end
end

function main.OnRequire(arg1, arg2) end

function main.OnClearLevel()
    actorMgr:DestroySoft()
end
