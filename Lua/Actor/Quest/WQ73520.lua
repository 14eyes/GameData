require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73520 = class("Quest73520", QuestActorProxy)
Quest73520.defaultAlias = "Quest73520"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73520:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73520:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7352001"] = self.OnSubStart7352001,
        ["7352002"] = self.OnSubStart7352002,
        ["7352003"] = self.OnSubStart7352003
    }
end

function Quest73520:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7352001"] = self.OnSubFinish7352001,
        ["7352002"] = self.OnSubFinish7352002,
        ["7352003"] = self.OnSubFinish7352003
    }
end

function Quest73520:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73520:Start()
    print("Start")
end

function Quest73520:OnDestroy()
    print("OnDestroy")
end

function Quest73520:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73520:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73520:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30353Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13254Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7352003_TriggerIn", 0, false)
end

function Quest73520:OnSubStart7352001(arg1)
    print("OnSubStart7352001")
    this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 1)
end

function Quest73520:OnSubFinish7352001(arg1)
    print("OnSubFinish7352001")
end

function Quest73520:OnSubStart7352002(arg1)
    print("OnSubStart7352002")
    this:CreateQuestNpc(arg1, npcs.Npc30353Data.id, 1)
end

function Quest73520:OnSubFinish7352002(arg1)
    print("OnSubFinish7352002")
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest73520:OnSubStart7352003(arg1)
    print("OnSubStart7352003")
    this:CreateQuestNpc(arg1, npcs.Npc13254Data.id, 1)
    actorMgr:CreateActorWithPos("Q7352003_TriggerIn", "Actor/Gadget/Q7352003_TriggerIn", 70900002, 0, points.TPos_Q7352003_TriggerIn.pos, points.TPos_Q7352003_TriggerIn.rot, true, false)
end

function Quest73520:OnSubFinish7352003(arg1)
    print("OnSubFinish7352003")
    this:SafeDestroyQuestNpc(npcs.Npc30353Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13254Data.alias, 3)
end

return Quest73520
