require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19170 = class("Quest19170", QuestActorProxy)
Quest19170.defaultAlias = "Quest19170"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19170:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1917001"] = self.OnSubStart1917001,
        ["1917002"] = self.OnSubStart1917002,
        ["1917003"] = self.OnSubStart1917003,
        ["1917004"] = self.OnSubStart1917004,
        ["1917005"] = self.OnSubStart1917005
    }
end

function Quest19170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1917001"] = self.OnSubFinish1917001,
        ["1917002"] = self.OnSubFinish1917002,
        ["1917003"] = self.OnSubFinish1917003,
        ["1917004"] = self.OnSubFinish1917004,
        ["1917005"] = self.OnSubFinish1917005
    }
end

function Quest19170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19170:Start()
    print("Start")
end

function Quest19170:OnDestroy()
    print("OnDestroy")
end

function Quest19170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19170:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12922Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4342Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4081Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1917001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917003Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917004Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917005Trigger", 3, false)
end

function Quest19170:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest19170:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19170:OnSubStart1917001(arg1)
    print("OnSubStart1917001")
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917001Trigger", "Actor/Gadget/Q1917001Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917001_guide").pos, sceneData:GetDummyPoint(3, "Q1917001_guide").rot, true, false, 3)
end

function Quest19170:OnSubFinish1917001(arg1)
    print("OnSubFinish1917001")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest19170:OnSubStart1917002(arg1)
    print("OnSubStart1917002")
    this:NpcCreateWithNpcTrigger(npcs.Npc1050Data.id, 1917002, 1, 20)
    this:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917001)
end

function Quest19170:OnSubFinish1917002(arg1)
    print("OnSubFinish1917002")
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

function Quest19170:OnSubStart1917003(arg1)
    print("OnSubStart1917003")
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12922Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1917003Trigger", "Actor/Gadget/Q1917003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917003_guide").pos, sceneData:GetDummyPoint(3, "Q1917003_guide").rot, true, false, 3)
end

function Quest19170:OnSubFinish1917003(arg1)
    print("OnSubFinish1917003")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19170:OnSubStart1917004(arg1)
    print("OnSubStart1917004")
    this:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917004Trigger", "Actor/Gadget/Q1917004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917004_N513").pos, sceneData:GetDummyPoint(3, "Q1917004_N513").rot, true, false, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917002)
end

function Quest19170:OnSubFinish1917004(arg1)
    print("OnSubFinish1917004")
end

function Quest19170:OnSubStart1917005(arg1)
    print("OnSubStart1917005")
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12922Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4081Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4082Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917005Trigger", "Actor/Gadget/Q1917005Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917004_N1051").pos, sceneData:GetDummyPoint(3, "Q1917004_N1051").rot, true, false, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917003)
end

function Quest19170:OnSubFinish1917005(arg1)
    print("OnSubFinish1917005")
    this:LightNotifyTo(npcs.Npc4081Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12922Data.alias, 3)
end

return Quest19170
