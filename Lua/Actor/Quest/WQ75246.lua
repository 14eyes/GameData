require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75246 = class("Quest75246", QuestActorProxy)
Quest75246.defaultAlias = "Quest75246"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75246:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75246:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524601"] = self.OnSubStart7524601,
        ["7524603"] = self.OnSubStart7524603,
        ["7524602"] = self.OnSubStart7524602
    }
end

function Quest75246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524601"] = self.OnSubFinish7524601,
        ["7524603"] = self.OnSubFinish7524603,
        ["7524602"] = self.OnSubFinish7524602
    }
end

function Quest75246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75246:Start()
    print("Start")
end

function Quest75246:OnDestroy()
    print("OnDestroy")
end

function Quest75246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75246:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75246:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75246:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75246:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75246:OnSubStart7524601(arg1)
    print("OnSubStart7524601")
    this:NpcCreateWithNpcTrigger(npcs.Npc21850.id, 0, 10, 7524601)
    this:CreateQuestNpc(arg1, npcs.Npc21849.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21971.id, 0, false, 0)
    this:CreateLocalGadget(74019020, "1", points.Q7524601_Gadget74019020_1_Point.pos, points.Q7524601_Gadget74019020_1_Point.rot, 3, nil, nil, true, 0, true)
    this:GetQuestNpcActor(npcs.Npc21850.alias, 75246):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21849.alias, 75246):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75246:OnSubFinish7524601(arg1)
    print("OnSubFinish7524601")
    this:RemoveLocalGadget(74019020, "1")
end

function Quest75246:OnSubStart7524603(arg1)
    print("OnSubStart7524603")
    this:GetQuestNpcActor(npcs.Npc21850.alias, 75246):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21849.alias, 75246):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7524603, 0, 20, 1, npcs.Npc21869.id)
end

function Quest75246:OnSubFinish7524603(arg1)
    print("OnSubFinish7524603")
    this:SafeDestroyQuestNpc(npcs.Npc21850.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21849.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21971.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21869.alias, 3)
end

function Quest75246:OnSubStart7524602(arg1)
    print("OnSubStart7524602")
end

function Quest75246:OnSubFinish7524602(arg1)
    print("OnSubFinish7524602")
end

return Quest75246
