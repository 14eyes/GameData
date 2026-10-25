require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75021 = class("Quest75021", QuestActorProxy)
Quest75021.defaultAlias = "Quest75021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest75021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502114"] = self.OnSubStart7502114,
        ["7502115"] = self.OnSubStart7502115,
        ["7502116"] = self.OnSubStart7502116,
        ["7502106"] = self.OnSubStart7502106,
        ["7502107"] = self.OnSubStart7502107,
        ["7502101"] = self.OnSubStart7502101,
        ["7502102"] = self.OnSubStart7502102,
        ["7502103"] = self.OnSubStart7502103,
        ["7502104"] = self.OnSubStart7502104,
        ["7502105"] = self.OnSubStart7502105,
        ["7502110"] = self.OnSubStart7502110,
        ["7502112"] = self.OnSubStart7502112,
        ["7502113"] = self.OnSubStart7502113,
        ["7502117"] = self.OnSubStart7502117,
        ["7502111"] = self.OnSubStart7502111
    }
end

function Quest75021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502114"] = self.OnSubFinish7502114,
        ["7502115"] = self.OnSubFinish7502115,
        ["7502116"] = self.OnSubFinish7502116,
        ["7502106"] = self.OnSubFinish7502106,
        ["7502107"] = self.OnSubFinish7502107,
        ["7502101"] = self.OnSubFinish7502101,
        ["7502102"] = self.OnSubFinish7502102,
        ["7502103"] = self.OnSubFinish7502103,
        ["7502104"] = self.OnSubFinish7502104,
        ["7502105"] = self.OnSubFinish7502105,
        ["7502110"] = self.OnSubFinish7502110,
        ["7502112"] = self.OnSubFinish7502112,
        ["7502113"] = self.OnSubFinish7502113,
        ["7502117"] = self.OnSubFinish7502117,
        ["7502111"] = self.OnSubFinish7502111
    }
end

function Quest75021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75021:Start()
    print("Start")
end

function Quest75021:OnDestroy()
    print("OnDestroy")
end

function Quest75021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75021:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest75021:OnSubStart7502114(arg1)
    print("OnSubStart7502114")
end

function Quest75021:OnSubFinish7502114(arg1)
    print("OnSubFinish7502114")
end

function Quest75021:OnSubStart7502115(arg1)
    print("OnSubStart7502115")
end

function Quest75021:OnSubFinish7502115(arg1)
    print("OnSubFinish7502115")
end

function Quest75021:OnSubStart7502116(arg1)
    print("OnSubStart7502116")
end

function Quest75021:OnSubFinish7502116(arg1)
    print("OnSubFinish7502116")
end

function Quest75021:OnSubStart7502106(arg1)
    print("OnSubStart7502106")
end

function Quest75021:OnSubFinish7502106(arg1)
    print("OnSubFinish7502106")
end

function Quest75021:OnSubStart7502107(arg1)
    print("OnSubStart7502107")
    this:CreateQuestNpc(arg1, npcs.Npc6134Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6134Data.alias):DoFreeStyle(5020, true, nil, true, true, false, false)
end

function Quest75021:OnSubFinish7502107(arg1)
    print("OnSubFinish7502107")
end

function Quest75021:OnSubStart7502101(arg1)
    print("OnSubStart7502101")
    this:CreateQuestNpc(arg1, npcs.Npc6134Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6134Data.alias):DoFreeStyle(5020, true, nil, true, true, false, false)
end

function Quest75021:OnSubFinish7502101(arg1)
    print("OnSubFinish7502101")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6134Data.alias)
end

function Quest75021:OnSubStart7502102(arg1)
    print("OnSubStart7502102")
    actorMgr:CreateActorWithPos("Q7502102Trigger", "Actor/Gadget/Q7502102Trigger", 70900002, 0, points.TPos_Q7502102Trigger.pos, points.TPos_Q7502102Trigger.rot, true, false, 3)
end

function Quest75021:OnSubFinish7502102(arg1)
    print("OnSubFinish7502102")
end

function Quest75021:OnSubStart7502103(arg1)
    print("OnSubStart7502103")
    this:NpcCreateWithNpcTrigger(npcs.Npc6134Data.id, 7502103, 0, 80)
end

function Quest75021:OnSubFinish7502103(arg1)
    print("OnSubFinish7502103")
end

function Quest75021:OnSubStart7502104(arg1)
    print("OnSubStart7502104")
end

function Quest75021:OnSubFinish7502104(arg1)
    print("OnSubFinish7502104")
end

function Quest75021:OnSubStart7502105(arg1)
    print("OnSubStart7502105")
end

function Quest75021:OnSubFinish7502105(arg1)
    print("OnSubFinish7502105")
end

function Quest75021:OnSubStart7502110(arg1)
    print("OnSubStart7502110")
    this:CreateQuestNpc(arg1, npcs.Npc6134Data.id, 0, false, 0)
end

function Quest75021:OnSubFinish7502110(arg1)
    print("OnSubFinish7502110")
end

function Quest75021:OnSubStart7502112(arg1)
    print("OnSubStart7502112")
    this:DeployStoryByQuest(147502101)
end

function Quest75021:OnSubFinish7502112(arg1)
    print("OnSubFinish7502112")
    this:CancelStoryByQuest(147502101)
end

function Quest75021:OnSubStart7502113(arg1)
    print("OnSubStart7502113")
    this:NpcCreateWithNpcTrigger(npcs.Npc6134Data.id, 7502113, 0, 80)
end

function Quest75021:OnSubFinish7502113(arg1)
    print("OnSubFinish7502113")
    this:SafeDestroyQuestNpc(npcs.Npc6134Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6145Data.alias, 3)
end

function Quest75021:OnSubStart7502117(arg1)
    print("OnSubStart7502117")
end

function Quest75021:OnSubFinish7502117(arg1)
    print("OnSubFinish7502117")
end

function Quest75021:OnSubStart7502111(arg1)
    print("OnSubStart7502111")
end

function Quest75021:OnSubFinish7502111(arg1)
    print("OnSubFinish7502111")
end

return Quest75021
