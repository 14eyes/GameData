require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74506 = class("Quest74506", QuestActorProxy)
Quest74506.defaultAlias = "Quest74506"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74506:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74506:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7450601"] = self.OnSubStart7450601,
        ["7450603"] = self.OnSubStart7450603,
        ["7450602"] = self.OnSubStart7450602
    }
end

function Quest74506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7450601"] = self.OnSubFinish7450601,
        ["7450603"] = self.OnSubFinish7450603,
        ["7450602"] = self.OnSubFinish7450602
    }
end

function Quest74506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74506:Start()
    print("Start")
end

function Quest74506:OnDestroy()
    print("OnDestroy")
end

function Quest74506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74506:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30423Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5075Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7450603Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7450602N30423Trigger", 3, false)
end

function Quest74506:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74506:OnSubStart7450601(arg1)
    print("OnSubStart7450601")
    actorUtils.FinishQuestID(false, 7450601)
end

function Quest74506:OnSubFinish7450601(arg1)
    print("OnSubFinish7450601")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7450601)
end

function Quest74506:OnSubStart7450603(arg1)
    print("OnSubStart7450603")
    this:CreateQuestNpc(arg1, npcs.Npc30423Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5075Data.id, 0)
    actorMgr:CreateActorWithPos("Q7450603Trigger", "Actor/Gadget/Q7450603Trigger", 70900002, 0, points.TPos_Q7450603Trigger.pos, points.TPos_Q7450603Trigger.rot, true, false, 3)
end

function Quest74506:OnSubFinish7450603(arg1)
    print("OnSubFinish7450603")
end

function Quest74506:OnSubStart7450602(arg1)
    print("OnSubStart7450602")
    this:NpcCreateWithNpcTrigger(npcs.Npc30423Data.id, 7450602, 0, 20)
end

function Quest74506:OnSubFinish7450602(arg1)
    print("OnSubFinish7450602")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30423Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5075Data.alias, 3)
end

return Quest74506
