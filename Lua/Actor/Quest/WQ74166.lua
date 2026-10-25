require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74166 = class("Quest74166", QuestActorProxy)
Quest74166.defaultAlias = "Quest74166"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74166:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74166:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7416601"] = self.OnSubStart7416601,
        ["7416602"] = self.OnSubStart7416602,
        ["7416603"] = self.OnSubStart7416603,
        ["7416604"] = self.OnSubStart7416604,
        ["7416605"] = self.OnSubStart7416605,
        ["7416606"] = self.OnSubStart7416606,
        ["7416607"] = self.OnSubStart7416607
    }
end

function Quest74166:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7416601"] = self.OnSubFinish7416601,
        ["7416602"] = self.OnSubFinish7416602,
        ["7416603"] = self.OnSubFinish7416603,
        ["7416604"] = self.OnSubFinish7416604,
        ["7416605"] = self.OnSubFinish7416605,
        ["7416606"] = self.OnSubFinish7416606,
        ["7416607"] = self.OnSubFinish7416607
    }
end

function Quest74166:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74166:Start()
    print("Start")
end

function Quest74166:OnDestroy()
    print("OnDestroy")
end

function Quest74166:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74166:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74166:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74166:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74166:OnSubStart7416601(arg1)
    print("OnSubStart7416601")
    this:CreateQuestNpc(arg1, npcs.Npc13791Data.id, 0)
    actorMgr:CreateActorWithPos("Q7416601TriggerIn", "Actor/Gadget/Q7416601TriggerIn", 70900002, 0, points.TPos_Q7416601TriggerIn.pos, points.TPos_Q7416601TriggerIn.rot, true, false, 3)
end

function Quest74166:OnSubFinish7416601(arg1)
    print("OnSubFinish7416601")
end

function Quest74166:OnSubStart7416602(arg1)
    print("OnSubStart7416602")
end

function Quest74166:OnSubFinish7416602(arg1)
    print("OnSubFinish7416602")
end

function Quest74166:OnSubStart7416603(arg1)
    print("OnSubStart7416603")
    this:CreateQuestNpc(arg1, npcs.Npc13791Data.id, 0)
end

function Quest74166:OnSubFinish7416603(arg1)
    print("OnSubFinish7416603")
    this:SafeDestroyQuestNpc(npcs.Npc13791Data.alias, 3)
end

function Quest74166:OnSubStart7416604(arg1)
    print("OnSubStart7416604")
    this:NpcCreateWithNpcTrigger(npcs.Npc13650Data.id, 7416604, 0, 3)
end

function Quest74166:OnSubFinish7416604(arg1)
    print("OnSubFinish7416604")
end

function Quest74166:OnSubStart7416605(arg1)
    print("OnSubStart7416605")
    this:NpcCreateWithNpcTrigger(npcs.Npc13650Data.id, 7416605, 0, 3)
end

function Quest74166:OnSubFinish7416605(arg1)
    print("OnSubFinish7416605")
end

function Quest74166:OnSubStart7416606(arg1)
    print("OnSubStart7416606")
    this:NpcCreateWithNpcTrigger(npcs.Npc13650Data.id, 7416606, 0, 3)
end

function Quest74166:OnSubFinish7416606(arg1)
    print("OnSubFinish7416606")
end

function Quest74166:OnSubStart7416607(arg1)
    print("OnSubStart7416607")
    this:NpcCreateWithNpcTrigger(npcs.Npc13650Data.id, 7416607, 0, 3)
end

function Quest74166:OnSubFinish7416607(arg1)
    print("OnSubFinish7416607")
    this:SafeDestroyQuestNpc(npcs.Npc13650Data.alias, 3)
end

return Quest74166
