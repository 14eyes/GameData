require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73286 = class("Quest73286", QuestActorProxy)
Quest73286.defaultAlias = "Quest73286"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73286:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73286:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7328601"] = self.OnSubStart7328601}
end

function Quest73286:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7328601"] = self.OnSubFinish7328601}
end

function Quest73286:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73286:Start()
    print("Start")
end

function Quest73286:OnDestroy()
    print("OnDestroy")
end

function Quest73286:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73286:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73286:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73286:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
    elseif arg1 == 0 then
        self:ActionSafeCall(function(arg1)
            globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
            globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
            globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
            globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
        end)
    elseif arg1 == 11 then
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
    elseif arg1 == 10 then
        self:ActionSafeCall(function(arg1)
            globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
            globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
            globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
            globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
        end)
    end
end

function Quest73286:OnSubStart7328601(arg1)
    print("OnSubStart7328601")
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
end

function Quest73286:OnSubFinish7328601(arg1)
    print("OnSubFinish7328601")
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("AranaraFlowerCrown_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("AranaraFlowerCrown_PlayerGirl", 10000007)
end

return Quest73286
