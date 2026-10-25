require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73348 = class("Quest73348", QuestActorProxy)
Quest73348.defaultAlias = "Quest73348"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73348:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73348:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7334808"] = self.OnSubStart7334808,
        ["7334806"] = self.OnSubStart7334806,
        ["7334801"] = self.OnSubStart7334801,
        ["7334802"] = self.OnSubStart7334802,
        ["7334807"] = self.OnSubStart7334807,
        ["7334803"] = self.OnSubStart7334803,
        ["7334805"] = self.OnSubStart7334805,
        ["7334804"] = self.OnSubStart7334804
    }
end

function Quest73348:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7334808"] = self.OnSubFinish7334808,
        ["7334806"] = self.OnSubFinish7334806,
        ["7334801"] = self.OnSubFinish7334801,
        ["7334802"] = self.OnSubFinish7334802,
        ["7334807"] = self.OnSubFinish7334807,
        ["7334803"] = self.OnSubFinish7334803,
        ["7334805"] = self.OnSubFinish7334805,
        ["7334804"] = self.OnSubFinish7334804
    }
end

function Quest73348:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73348:Start()
    print("Start")
end

function Quest73348:OnDestroy()
    print("OnDestroy")
end

function Quest73348:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73348:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73348:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73348:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73348:OnSubStart7334808(arg1)
    print("OnSubStart7334808")
    actorMgr:CreateActorWithPos("Q7334808Trigger", "Actor/Gadget/Q7334808Trigger", 70900002, 0, points.TPos_Q7334808Trigger.pos, points.TPos_Q7334808Trigger.rot, true, false, 3)
end

function Quest73348:OnSubFinish7334808(arg1)
    print("OnSubFinish7334808")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 73348)
end

function Quest73348:OnSubStart7334806(arg1)
    print("OnSubStart7334806")
    this:CreateQuestNpc(arg1, npcs.Npc4002Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4086Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc4086Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4002Data.alias):DisableInteeHeadCtrl(true)
end

function Quest73348:OnSubFinish7334806(arg1)
    print("OnSubFinish7334806")
    this:ClearNarratorTask()
end

function Quest73348:OnSubStart7334801(arg1)
    print("OnSubStart7334801")
    this:CreateQuestNpc(arg1, npcs.Npc21043Data.id, 1)
end

function Quest73348:OnSubFinish7334801(arg1)
    print("OnSubFinish7334801")
    this:SafeDestroyQuestNpc(npcs.Npc4002Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4086Data.alias, 3)
end

function Quest73348:OnSubStart7334802(arg1)
    print("OnSubStart7334802")
    actorMgr:CreateActorWithPos("Q7334802Trigger", "Actor/Gadget/Q7334802Trigger", 70900002, 0, points.TPos_Q7334802Trigger.pos, points.TPos_Q7334802Trigger.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc21043Data.id, 0)
end

function Quest73348:OnSubFinish7334802(arg1)
    print("OnSubFinish7334802")
end

function Quest73348:OnSubStart7334807(arg1)
    print("OnSubStart7334807")
end

function Quest73348:OnSubFinish7334807(arg1)
    print("OnSubFinish7334807")
end

function Quest73348:OnSubStart7334803(arg1)
    print("OnSubStart7334803")
    actorMgr:CreateActorWithPos("Q7334803Trigger", "Actor/Gadget/Q7334803Trigger", 70900002, 0, points.TPos_Q7334803Trigger.pos, points.TPos_Q7334803Trigger.rot, true, false, 3)
end

function Quest73348:OnSubFinish7334803(arg1)
    print("OnSubFinish7334803")
    this:SafeDestroyQuestNpc(npcs.Npc21044Data.alias, 3)
end

function Quest73348:OnSubStart7334805(arg1)
    print("OnSubStart7334805")
    this:CreateQuestNpc(arg1, npcs.Npc21043Data.id, 0)
end

function Quest73348:OnSubFinish7334805(arg1)
    print("OnSubFinish7334805")
end

function Quest73348:OnSubStart7334804(arg1)
    print("OnSubStart7334804")
    this:CreateQuestNpc(arg1, npcs.Npc2618Data.id, 1)
end

function Quest73348:OnSubFinish7334804(arg1)
    print("OnSubFinish7334804")
    this:SafeDestroyQuestNpc(npcs.Npc21043Data.alias, 3)
    this:NpcDestroyWithBlackscreen(6, npcs.Npc2618Data.alias)
end

return Quest73348
