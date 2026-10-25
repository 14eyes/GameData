require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3030 = class("Quest3030", QuestActorProxy)
Quest3030.defaultAlias = "Quest3030"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest3030:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest3030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303002"] = self.OnSubStart303002,
        ["303010"] = self.OnSubStart303010,
        ["303004"] = self.OnSubStart303004,
        ["303006"] = self.OnSubStart303006,
        ["303009"] = self.OnSubStart303009,
        ["303008"] = self.OnSubStart303008,
        ["303007"] = self.OnSubStart303007,
        ["303005"] = self.OnSubStart303005,
        ["303003"] = self.OnSubStart303003,
        ["303001"] = self.OnSubStart303001
    }
end

function Quest3030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303002"] = self.OnSubFinish303002,
        ["303010"] = self.OnSubFinish303010,
        ["303004"] = self.OnSubFinish303004,
        ["303006"] = self.OnSubFinish303006,
        ["303009"] = self.OnSubFinish303009,
        ["303008"] = self.OnSubFinish303008,
        ["303007"] = self.OnSubFinish303007,
        ["303005"] = self.OnSubFinish303005,
        ["303003"] = self.OnSubFinish303003,
        ["303001"] = self.OnSubFinish303001
    }
end

function Quest3030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3030:Start()
    print("Start")
end

function Quest3030:OnDestroy()
    print("OnDestroy")
end

function Quest3030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3030:OnSubStart303002(arg1)
    print("OnSubStart303002")
    this:CreateQuestNpc(arg1, npcs.Npc3027Data.id, 1)
    actorMgr:CreateActorWithPos("Q303002Trigger", "Actor/Gadget/Q303002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303002_N3027").pos, sceneData:GetDummyPoint(3, "Q303002_N3027").rot, true, false, 3)
end

function Quest3030:OnSubFinish303002(arg1)
    print("OnSubFinish303002")
end

function Quest3030:OnSubStart303010(arg1)
    print("OnSubStart303010")
    this:CreateQuestNpc(arg1, npcs.Npc3099Data.id, 2)
    actorMgr:CreateActorWithPos("Q303010Trigger", "Actor/Gadget/Q303010Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303010_guide").pos, sceneData:GetDummyPoint(3, "Q303010_guide").rot, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc3101Data.alias, 1, true)
end

function Quest3030:OnSubFinish303010(arg1)
    print("OnSubFinish303010")
    this:SafeDestroyQuestNpc(npcs.Npc3027Data.alias, 3)
end

function Quest3030:OnSubStart303004(arg1)
    print("OnSubStart303004")
    this:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc3101Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc3162Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q303004Trigger", "Actor/Gadget/Q303004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303004_guide").pos, sceneData:GetDummyPoint(3, "Q303004_guide").rot, true, false, 3)
end

function Quest3030:OnSubFinish303004(arg1)
    print("OnSubFinish303004")
    this:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3101Data.alias, 3)
end

function Quest3030:OnSubStart303006(arg1)
    print("OnSubStart303006")
    actorMgr:CreateActorWithPos("Q303006Trigger", "Actor/Gadget/Q303006Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303004_guide").pos, sceneData:GetDummyPoint(3, "Q303004_guide").rot, true, false, 3)
end

function Quest3030:OnSubFinish303006(arg1)
    print("OnSubFinish303006")
    this:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
end

function Quest3030:OnSubStart303009(arg1)
    print("OnSubStart303009")
end

function Quest3030:OnSubFinish303009(arg1)
    print("OnSubFinish303009")
end

function Quest3030:OnSubStart303008(arg1)
    print("OnSubStart303008")
end

function Quest3030:OnSubFinish303008(arg1)
    print("OnSubFinish303008")
end

function Quest3030:OnSubStart303007(arg1)
    print("OnSubStart303007")
end

function Quest3030:OnSubFinish303007(arg1)
    print("OnSubFinish303007")
end

function Quest3030:OnSubStart303005(arg1)
    print("OnSubStart303005")
end

function Quest3030:OnSubFinish303005(arg1)
    print("OnSubFinish303005")
end

function Quest3030:OnSubStart303003(arg1)
    print("OnSubStart303003")
end

function Quest3030:OnSubFinish303003(arg1)
    print("OnSubFinish303003")
end

function Quest3030:OnSubStart303001(arg1)
    print("OnSubStart303001")
end

function Quest3030:OnSubFinish303001(arg1)
    print("OnSubFinish303001")
end

return Quest3030
