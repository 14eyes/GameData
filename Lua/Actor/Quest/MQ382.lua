require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest382 = class("Quest382", QuestActorProxy)
Quest382.defaultAlias = "Quest382"
local clientData
local subIDs

function Quest382:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
end

function Quest382:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["38201"] = self.OnSubStart38201
    self.subStartHandlers["38202"] = self.OnSubStart38202
    self.subStartHandlers["38203"] = self.OnSubStart38203
end

function Quest382:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["38201"] = self.OnSubFinish38201
    self.subFinishHandlers["38202"] = self.OnSubFinish38202
    self.subFinishHandlers["38203"] = self.OnSubFinish38203
end

function Quest382:OnSubStart38201(arg1)
    print("38201 start:...")
    actorMgr:CreateActorWithPos("Q382Trigger", "Actor/Gadget/Q382Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q382DragonTill").pos, sceneData:GetDummyPoint(3, "Q382DragonTill").rot, true, false)
end

function Quest382:OnSubStart38202(arg1)
    print("38202 start:...")
    self:CallDelay(20, self.DestroyMark)
end

function Quest382:OnSubStart38203(arg1)
    print("38203 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest382:OnSubFinish38201(arg1)
    print("OnFinished 38201")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q382DragonTillChest").pos, 4.5, 3, true)
end

function Quest382:OnSubFinish38202(arg1)
    print("OnFinished 38202")
    self:UnSpawn("Tearchest")
end

function Quest382:DestroyMark()
    self:UnSpawn("Tearchest")
end

function Quest382:OnSubFinish38203(arg1)
    print("OnFinished 38202")
end

function Quest382:Start() end
function Quest382:OnDestroy() end
return Quest382
