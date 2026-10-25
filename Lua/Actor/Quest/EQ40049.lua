require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40049 = class("Quest40049", QuestActorProxy)
Quest40049.defaultAlias = "Quest40049"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest40049:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4004905"] = self.OnSubStart4004905,
        ["4004904"] = self.OnSubStart4004904,
        ["4004906"] = self.OnSubStart4004906,
        ["4004907"] = self.OnSubStart4004907,
        ["4004913"] = self.OnSubStart4004913,
        ["4004908"] = self.OnSubStart4004908,
        ["4004909"] = self.OnSubStart4004909,
        ["4004910"] = self.OnSubStart4004910,
        ["4004911"] = self.OnSubStart4004911,
        ["4004912"] = self.OnSubStart4004912,
        ["4004901"] = self.OnSubStart4004901,
        ["4004902"] = self.OnSubStart4004902,
        ["4004903"] = self.OnSubStart4004903,
        ["4004914"] = self.OnSubStart4004914
    }
end

function Quest40049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4004905"] = self.OnSubFinish4004905,
        ["4004904"] = self.OnSubFinish4004904,
        ["4004906"] = self.OnSubFinish4004906,
        ["4004907"] = self.OnSubFinish4004907,
        ["4004913"] = self.OnSubFinish4004913,
        ["4004908"] = self.OnSubFinish4004908,
        ["4004909"] = self.OnSubFinish4004909,
        ["4004910"] = self.OnSubFinish4004910,
        ["4004911"] = self.OnSubFinish4004911,
        ["4004912"] = self.OnSubFinish4004912,
        ["4004901"] = self.OnSubFinish4004901,
        ["4004902"] = self.OnSubFinish4004902,
        ["4004903"] = self.OnSubFinish4004903,
        ["4004914"] = self.OnSubFinish4004914
    }
end

function Quest40049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4004906"] = self.OnSubFailed4004906, ["4004907"] = self.OnSubFailed4004907}
end

function Quest40049:Start()
    print("Start")
end

function Quest40049:OnDestroy()
    print("OnDestroy")
end

function Quest40049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40049:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:DestroyEntityActor("Q4004909Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004906Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004907Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004908Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004908TowerTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q4004913Trigger", 3, false)
end

function Quest40049:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40049:OnSubStart4004905(arg1)
    print("OnSubStart4004905")
end

function Quest40049:OnSubFinish4004905(arg1)
    print("OnSubFinish4004905")
end

function Quest40049:OnSubStart4004904(arg1)
    print("OnSubStart4004904")
end

function Quest40049:OnSubFinish4004904(arg1)
    print("OnSubFinish4004904")
    self:EnterSceneLookCamera({x = 1298.646, y = 258.4898, z = -658.9192}, 0, 3, false, true)
    actorMgr:GetActor("40049"):NarratorOnlyTaskByData(datas.NarratorWithId4004902, nil, 40049)
end

function Quest40049:OnSubStart4004906(arg1)
    print("OnSubStart4004906")
    actorMgr:CreateActorWithPos("Q4004906Trigger", "Actor/Gadget/Q4004906Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004906_guide").pos, sceneData:GetDummyPoint(7, "Q4004906_guide").rot, true, false, 7)
end

function Quest40049:OnSubFinish4004906(arg1)
    print("OnSubFinish4004906")
end

function Quest40049:OnSubFailed4004906(arg1)
    print("OnSubFailed4004906")
    self:ActorDestroy("Q4004906Trigger")
end

function Quest40049:OnSubStart4004907(arg1)
    print("OnSubStart4004907")
    actorMgr:CreateActorWithPos("Q4004907Trigger", "Actor/Gadget/Q4004907Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004907_trigger").pos, sceneData:GetDummyPoint(7, "Q4004907_trigger").rot, true, false, 7)
end

function Quest40049:OnSubFinish4004907(arg1)
    print("OnSubFinish4004907")
end

function Quest40049:OnSubFailed4004907(arg1)
    print("OnSubFailed4004907")
    self:ActorDestroy("Q4004907Trigger")
end

function Quest40049:OnSubStart4004913(arg1)
    print("OnSubStart4004913")
    actorMgr:CreateActorWithPos("Q4004913Trigger", "Actor/Gadget/Q4004913Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004907_trigger").pos, sceneData:GetDummyPoint(7, "Q4004907_trigger").rot, true, false, 7)
end

function Quest40049:OnSubFinish4004913(arg1)
    print("OnSubFinish4004913")
end

function Quest40049:OnSubStart4004908(arg1)
    print("OnSubStart4004908")
    actorMgr:CreateActorWithPos("Q4004908Trigger", "Actor/Gadget/Q4004908Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004908_guide").pos, sceneData:GetDummyPoint(7, "Q4004908_guide").rot, true, false, 7)
    actorMgr:CreateActorWithPos("Q4004908TowerTrigger", "Actor/Gadget/Q4004908TowerTrigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004901_operator").pos, sceneData:GetDummyPoint(7, "Q4004901_operator").rot, true, false, 7)
end

function Quest40049:OnSubFinish4004908(arg1)
    print("OnSubFinish4004908")
    self:ActorDestroy("Q4004908Trigger")
    self:ActorDestroy("Q4004908TowerTrigger")
end

function Quest40049:OnSubStart4004909(arg1)
    print("OnSubStart4004909")
    actorMgr:CreateActorWithPos("Q4004909Trigger", "Actor/Gadget/Q4004909Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4004901_operator").pos, sceneData:GetDummyPoint(7, "Q4004901_operator").rot, true, false, 7)
end

function Quest40049:OnSubFinish4004909(arg1)
    print("OnSubFinish4004909")
end

function Quest40049:OnSubStart4004910(arg1)
    print("OnSubStart4004910")
end

function Quest40049:OnSubFinish4004910(arg1)
    print("OnSubFinish4004910")
end

function Quest40049:OnSubStart4004911(arg1)
    print("OnSubStart4004911")
end

function Quest40049:OnSubFinish4004911(arg1)
    print("OnSubFinish4004911")
end

function Quest40049:OnSubStart4004912(arg1)
    print("OnSubStart4004912")
end

function Quest40049:OnSubFinish4004912(arg1)
    print("OnSubFinish4004912")
end

function Quest40049:OnSubStart4004901(arg1)
    print("OnSubStart4004901")
end

function Quest40049:OnSubFinish4004901(arg1)
    print("OnSubFinish4004901")
end

function Quest40049:OnSubStart4004902(arg1)
    print("OnSubStart4004902")
end

function Quest40049:OnSubFinish4004902(arg1)
    print("OnSubFinish4004902")
end

function Quest40049:OnSubStart4004903(arg1)
    print("OnSubStart4004903")
end

function Quest40049:OnSubFinish4004903(arg1)
    print("OnSubFinish4004903")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4004903, nil, 40049)
end

function Quest40049:OnSubStart4004914(arg1)
    print("OnSubStart4004914")
end

function Quest40049:OnSubFinish4004914(arg1)
    print("OnSubFinish4004914")
end

return Quest40049
