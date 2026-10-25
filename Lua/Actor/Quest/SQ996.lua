require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest996 = class("Quest996", QuestActorProxy)
Quest996.defaultAlias = "Quest996"
local Q996ClientConfig = require("Quest/Client/Q996ClientConfig")

local subIDs = Q996ClientConfig.SubIDs
local gaiaData = Q996ClientConfig.GaiaData

function Quest996:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99601"] = self.OnSubStart99601
    self.subStartHandlers["99602"] = self.OnSubStart99602
end

function Quest996:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["99601"] = self.OnSubFinish99601
    self.subFinishHandlers["99602"] = self.OnSubFinish99602
end

function Quest996:OnSubStart99601(arg1)
    print("99601 start:...")
    self:NotifyTo("Npc1587", 1, true)
    self:SpawnGadget(70690001, sceneData:GetDummyPoint(1008, "Q373WendyTemp").pos, sceneData:GetDummyPoint(1008, "Q373WendyTemp").rot, "Acc1", 1008)
    globalActor:SpawnAttach("Mask_Diluc", 10000016)
    globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
end

function Quest996:OnSubStart99602(arg1)
    print("99602 start:...")
    local actor = actorMgr:GetActor(gaiaData.Gaia)
    if actor ~= nil then
        actor:Destroy(false)
    end

    self:UnSpawn("Acc1")
    globalActor:UnSpawnAttach("Mask_Diluc", 10000016)
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
end

function Quest996:OnSubFinish99601(arg1)
    print("OnFinished 99601")
    self:CallDelay(5, function(arg1)
        arg1:LightNotifyTo("Npc1587", 0, true)
    end)
end

function Quest996:OnSubFinish99602(arg1)
    print("OnFinished 99602")
end

function Quest996:Start() end
function Quest996:OnDestroy() end
return Quest996
