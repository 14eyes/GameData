require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19059 = class("Quest19059", QuestActorProxy)
Quest19059.defaultAlias = "Quest19059"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest19059:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest19059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905901"] = self.OnSubStart1905901,
        ["1905902"] = self.OnSubStart1905902,
        ["1905903"] = self.OnSubStart1905903,
        ["1905904"] = self.OnSubStart1905904
    }
end

function Quest19059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905901"] = self.OnSubFinish1905901,
        ["1905902"] = self.OnSubFinish1905902,
        ["1905903"] = self.OnSubFinish1905903,
        ["1905904"] = self.OnSubFinish1905904
    }
end

function Quest19059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19059:Start()
    print("Start")
end

function Quest19059:OnDestroy()
    print("OnDestroy")
end

function Quest19059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19059:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13235Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13277Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1905901Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905902lLostTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905903N515Trigger", 3, false)
end

function Quest19059:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest19059:FuncFreestyle()
    print("FuncFreestyle")
    this:GetQuestNpcActor(npcs.Npc13235Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19059:OnSubStart1905901(arg1)
    print("OnSubStart1905901")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1905901)
    this:CreateQuestNpc(arg1, npcs.Npc13235Data.id, 2)
    actorMgr:CreateActorWithPos("Q1905901Trigger", "Actor/Gadget/Q1905901Trigger", 70900002, 0, {x = -1947.214, y = 202.36, z = 2664.869}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19059:OnSubFinish1905901(arg1)
    print("OnSubFinish1905901")
    this:SafeDestroyQuestNpc(npcs.Npc13235Data.alias, 3)
end

function Quest19059:OnSubStart1905902(arg1)
    print("OnSubStart1905902")
    actorMgr:CreateActorWithPos("Q1905902lLostTrigger", "Actor/Gadget/Q1905902lLostTrigger", 70900002, 0, {x = -2003.728, y = 200.0, z = 2669.9}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest19059:OnSubFinish1905902(arg1)
    print("OnSubFinish1905902")
end

function Quest19059:OnSubStart1905903(arg1)
    print("OnSubStart1905903")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1905903)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Coop_KavehData.id, 1905903, 1, 13, 1)
end

function Quest19059:OnSubFinish1905903(arg1)
    print("OnSubFinish1905903")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_KavehData.alias, 3)
end

function Quest19059:OnSubStart1905904(arg1)
    print("OnSubStart1905904")
    this:RequestCoopInteractionFromSubStartPoint(108101, 1905904)
    this:CreateQuestNpc(arg1, npcs.Npc13277Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc13277Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest19059:OnSubFinish1905904(arg1)
    print("OnSubFinish1905904")
    this:SafeDestroyQuestNpc(npcs.Npc13277Data.alias, 3)
end

return Quest19059
