require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11004 = class("Quest11004", QuestActorProxy)
Quest11004.defaultAlias = "Quest11004"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 11004
local paimonData
local xianglingData
local freezeBoarData

function Quest11004:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 11004
    paimonData = clientData.PaimonData
    xianglingData = clientData.XianglingData
    freezeBoarData = clientData.FreezeBoarData
end

function Quest11004:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1100401"] = self.OnSubStart1100401
    self.subStartHandlers["1100402"] = self.OnSubStart1100402
    self.subStartHandlers["1100403"] = self.OnSubStart1100403
    self.subStartHandlers["1100499"] = self.OnSubStart1100499
    self.subStartHandlers["1100498"] = self.OnSubStart1100498
end

function Quest11004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1100401"] = self.OnSubFinish1100401
    self.subFinishHandlers["1100402"] = self.OnSubFinish1100402
    self.subFinishHandlers["1100403"] = self.OnSubFinish1100403
    self.subFinishHandlers["1100499"] = self.OnSubFinish1100499
    self.subFinishHandlers["1100498"] = self.OnSubFinish1100498
end

function Quest11004:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11004:PaimonDelay()
    self:PaimonDis()
end

function Quest11004:OnSubStart1100401(arg1)
    print("1100401 start:...")
end

function Quest11004:OnSubStart1100499(arg1)
    print("1100499 start:...")
end

function Quest11004:OnSubStart1100498(arg1)
    print("1100498 start:...")
    actorMgr:CreateActorWithPos("Q1100498Trigger", "Actor/Gadget/Q1100498Trigger", 70900002, 0, sceneData:GetDummyPoint(20005, "Q1100498Trigger").pos, sceneData:GetDummyPoint(20005, "Q1100498Trigger").rot, true, false, 20005)
    self:SpawnGadget(arg1, freezeBoarData.ID)
end

function Quest11004:OnSubStart1100402(arg1)
    print("1100402 start:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1)
end

function Quest11004:OnSubStart1100403(arg1)
    print("1100403 start:...")
end

function Quest11004:OnSubFinish1100401(arg1) end

function Quest11004:OnSubFinish1100499(arg1)
    print("1100499 finish:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow2)
end

function Quest11004:OnSubFinish1100498(arg1)
    print("1100499 finish:...")
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow3)
    globalActor:EnablePlayerInput(false)
    self:CallDelay(2, function()
        globalActor:EnablePlayerInput(true)
    end)
end

function Quest11004:OnSubFinish1100402(arg1)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({xianglingData.Alias})
    self:CallDelay(2, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, xianglingData.ID)
            arg1_2:GetQuestNpcActor(xianglingData.Alias):DoFreeStyle(1220)
            arg1_2:RequestInteraction(xianglingData.Alias)
            print("SHOW BLACK SCREEN 1100402")
        end, entityCreateTask)
    end)
end

function Quest11004:OnSubFinish1100403(arg1)
    print("1100403 finish:...")
    if self:GetQuestNpcActor(xianglingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(xianglingData.Alias, false)
        end)
    end

    globalActor:UnSpawn("FreezeBoar")
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest11004:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("del FreezeBoar")
        globalActor:UnSpawn("FreezeBoar")
    end
end

function Quest11004:Start() end
function Quest11004:OnDestroy() end
return Quest11004
