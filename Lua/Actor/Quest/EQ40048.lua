require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40048 = class("Quest40048", QuestActorProxy)
Quest40048.defaultAlias = "Quest40048"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest40048:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4004804"] = self.OnSubStart4004804,
        ["4004805"] = self.OnSubStart4004805,
        ["4004806"] = self.OnSubStart4004806,
        ["4004807"] = self.OnSubStart4004807,
        ["4004813"] = self.OnSubStart4004813,
        ["4004808"] = self.OnSubStart4004808,
        ["4004809"] = self.OnSubStart4004809,
        ["4004810"] = self.OnSubStart4004810,
        ["4004811"] = self.OnSubStart4004811,
        ["4004812"] = self.OnSubStart4004812,
        ["4004801"] = self.OnSubStart4004801,
        ["4004802"] = self.OnSubStart4004802,
        ["4004803"] = self.OnSubStart4004803,
        ["4004814"] = self.OnSubStart4004814
    }
end

function Quest40048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4004804"] = self.OnSubFinish4004804,
        ["4004805"] = self.OnSubFinish4004805,
        ["4004806"] = self.OnSubFinish4004806,
        ["4004807"] = self.OnSubFinish4004807,
        ["4004813"] = self.OnSubFinish4004813,
        ["4004808"] = self.OnSubFinish4004808,
        ["4004809"] = self.OnSubFinish4004809,
        ["4004810"] = self.OnSubFinish4004810,
        ["4004811"] = self.OnSubFinish4004811,
        ["4004812"] = self.OnSubFinish4004812,
        ["4004801"] = self.OnSubFinish4004801,
        ["4004802"] = self.OnSubFinish4004802,
        ["4004803"] = self.OnSubFinish4004803,
        ["4004814"] = self.OnSubFinish4004814
    }
end

function Quest40048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4004806"] = self.OnSubFailed4004806, ["4004807"] = self.OnSubFailed4004807}
end

function Quest40048:Start()
    print("Start")
end

function Quest40048:OnDestroy()
    print("OnDestroy")
end

function Quest40048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40048:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q4004809Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004806Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004807Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004808Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004813Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004808TowerTrigger", 3, false)
end

function Quest40048:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40048:OnSubStart4004804(arg1)
    print("OnSubStart4004804")
end

function Quest40048:OnSubFinish4004804(arg1)
    print("OnSubFinish4004804")
    self:EnterSceneLookCamera({x = 1320.993, y = 233.8026, z = 702.0989}, 0, 3, false, true)
    actorMgr:GetActor("40048"):NarratorOnlyTaskByData(datas.NarratorWithId4004804, nil, 40048)
end

function Quest40048:OnSubStart4004805(arg1)
    print("OnSubStart4004805")
end

function Quest40048:OnSubFinish4004805(arg1)
    print("OnSubFinish4004805")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004803, nil, 40048)
end

function Quest40048:OnSubStart4004806(arg1)
    print("OnSubStart4004806")
    actorMgr:CreateActorWithPos("Q4004806Trigger", "Actor/Gadget/Q4004806Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004806_guide").pos, sceneData:GetDummyPoint(7, "Q4004806_guide").rot, true, false, 7)
end

function Quest40048:OnSubFinish4004806(arg1)
    print("OnSubFinish4004806")
end

function Quest40048:OnSubFailed4004806(arg1)
    print("OnSubFailed4004806")
    self:ActorDestroy("Q4004806Trigger")
end

function Quest40048:OnSubStart4004807(arg1)
    print("OnSubStart4004807")
    actorMgr:CreateActorWithPos("Q4004807Trigger", "Actor/Gadget/Q4004807Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004807_trigger").pos, sceneData:GetDummyPoint(7, "Q4004807_trigger").rot, true, false, 7)
end

function Quest40048:OnSubFinish4004807(arg1)
    print("OnSubFinish4004807")
end

function Quest40048:OnSubFailed4004807(arg1)
    print("OnSubFailed4004807")
    self:ActorDestroy("Q4004807Trigger")
end

function Quest40048:OnSubStart4004813(arg1)
    print("OnSubStart4004813")
    actorMgr:CreateActorWithPos("Q4004813Trigger", "Actor/Gadget/Q4004813Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004807_trigger").pos, sceneData:GetDummyPoint(7, "Q4004807_trigger").rot, true, false, 7)
end

function Quest40048:OnSubFinish4004813(arg1)
    print("OnSubFinish4004813")
end

function Quest40048:OnSubStart4004808(arg1)
    print("OnSubStart4004808")
    actorMgr:CreateActorWithPos("Q4004808Trigger", "Actor/Gadget/Q4004808Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004808_guide").pos, sceneData:GetDummyPoint(7, "Q4004808_guide").rot, true, false, 7)
    actorMgr:CreateActorWithPos("Q4004808TowerTrigger", "Actor/Gadget/Q4004808TowerTrigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004801_operator").pos, sceneData:GetDummyPoint(7, "Q4004801_operator").rot, true, false, 7)
end

function Quest40048:OnSubFinish4004808(arg1)
    print("OnSubFinish4004808")
    self:ActorDestroy("Q4004808TowerTrigger")
    self:ActorDestroy("Q4004808Trigger")
end

function Quest40048:OnSubStart4004809(arg1)
    print("OnSubStart4004809")
    actorMgr:CreateActorWithPos("Q4004809Trigger", "Actor/Gadget/Q4004809Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004801_operator").pos, sceneData:GetDummyPoint(7, "Q4004801_operator").rot, true, false, 7)
end

function Quest40048:OnSubFinish4004809(arg1)
    print("OnSubFinish4004809")
end

function Quest40048:OnSubStart4004810(arg1)
    print("OnSubStart4004810")
end

function Quest40048:OnSubFinish4004810(arg1)
    print("OnSubFinish4004810")
end

function Quest40048:OnSubStart4004811(arg1)
    print("OnSubStart4004811")
end

function Quest40048:OnSubFinish4004811(arg1)
    print("OnSubFinish4004811")
end

function Quest40048:OnSubStart4004812(arg1)
    print("OnSubStart4004812")
end

function Quest40048:OnSubFinish4004812(arg1)
    print("OnSubFinish4004812")
end

function Quest40048:OnSubStart4004801(arg1)
    print("OnSubStart4004801")
end

function Quest40048:OnSubFinish4004801(arg1)
    print("OnSubFinish4004801")
end

function Quest40048:OnSubStart4004802(arg1)
    print("OnSubStart4004802")
end

function Quest40048:OnSubFinish4004802(arg1)
    print("OnSubFinish4004802")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004805, nil, 40048)
end

function Quest40048:OnSubStart4004803(arg1)
    print("OnSubStart4004803")
end

function Quest40048:OnSubFinish4004803(arg1)
    print("OnSubFinish4004803")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004806, nil, 40048)
end

function Quest40048:OnSubStart4004814(arg1)
    print("OnSubStart4004814")
end

function Quest40048:OnSubFinish4004814(arg1)
    print("OnSubFinish4004814")
end

return Quest40048
