require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74041 = class("Quest74041", QuestActorProxy)
Quest74041.defaultAlias = "Quest74041"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74041:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404101"] = self.OnSubStart7404101,
        ["7404102"] = self.OnSubStart7404102,
        ["7404103"] = self.OnSubStart7404103,
        ["7404104"] = self.OnSubStart7404104,
        ["7404114"] = self.OnSubStart7404114,
        ["7404105"] = self.OnSubStart7404105,
        ["7404106"] = self.OnSubStart7404106,
        ["7404107"] = self.OnSubStart7404107,
        ["7404108"] = self.OnSubStart7404108,
        ["7404115"] = self.OnSubStart7404115,
        ["7404109"] = self.OnSubStart7404109,
        ["7404110"] = self.OnSubStart7404110,
        ["7404111"] = self.OnSubStart7404111,
        ["7404112"] = self.OnSubStart7404112,
        ["7404113"] = self.OnSubStart7404113
    }
end

function Quest74041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404101"] = self.OnSubFinish7404101,
        ["7404102"] = self.OnSubFinish7404102,
        ["7404103"] = self.OnSubFinish7404103,
        ["7404104"] = self.OnSubFinish7404104,
        ["7404114"] = self.OnSubFinish7404114,
        ["7404105"] = self.OnSubFinish7404105,
        ["7404106"] = self.OnSubFinish7404106,
        ["7404107"] = self.OnSubFinish7404107,
        ["7404108"] = self.OnSubFinish7404108,
        ["7404115"] = self.OnSubFinish7404115,
        ["7404109"] = self.OnSubFinish7404109,
        ["7404110"] = self.OnSubFinish7404110,
        ["7404111"] = self.OnSubFinish7404111,
        ["7404112"] = self.OnSubFinish7404112,
        ["7404113"] = self.OnSubFinish7404113
    }
end

function Quest74041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74041:Start()
    print("Start")
end

function Quest74041:OnDestroy()
    print("OnDestroy")
end

function Quest74041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74041:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5224Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21079Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7404104Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7404105Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7404109Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7404111Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7404114N5224Trigger", 3, false)
end

function Quest74041:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74041:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74041:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74041:OnSubStart7404101(arg1)
    print("OnSubStart7404101")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
end

function Quest74041:OnSubFinish7404101(arg1)
    print("OnSubFinish7404101")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

function Quest74041:OnSubStart7404102(arg1)
    print("OnSubStart7404102")
end

function Quest74041:OnSubFinish7404102(arg1)
    print("OnSubFinish7404102")
end

function Quest74041:OnSubStart7404103(arg1)
    print("OnSubStart7404103")
end

function Quest74041:OnSubFinish7404103(arg1)
    print("OnSubFinish7404103")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

function Quest74041:OnSubStart7404104(arg1)
    print("OnSubStart7404104")
    actorMgr:CreateActorWithPos("Q7404104Trigger", "Actor/Gadget/Q7404104Trigger", 70900002, 0, points.TPos_Q7404104Trigger.pos, points.TPos_Q7404104Trigger.rot, true, false, 3)
end

function Quest74041:OnSubFinish7404104(arg1)
    print("OnSubFinish7404104")
end

function Quest74041:OnSubStart7404114(arg1)
    print("OnSubStart7404114")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5224Data.id, 7404114, 0, 20, 2)
end

function Quest74041:OnSubFinish7404114(arg1)
    print("OnSubFinish7404114")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

function Quest74041:OnSubStart7404105(arg1)
    print("OnSubStart7404105")
    actorMgr:CreateActorWithPos("Q7404105Trigger", "Actor/Gadget/Q7404105Trigger", 70900002, 0, points.TPos_Q7404105Trigger.pos, points.TPos_Q7404105Trigger.rot, true, false, 3)
end

function Quest74041:OnSubFinish7404105(arg1)
    print("OnSubFinish7404105")
end

function Quest74041:OnSubStart7404106(arg1)
    print("OnSubStart7404106")
end

function Quest74041:OnSubFinish7404106(arg1)
    print("OnSubFinish7404106")
end

function Quest74041:OnSubStart7404107(arg1)
    print("OnSubStart7404107")
end

function Quest74041:OnSubFinish7404107(arg1)
    print("OnSubFinish7404107")
end

function Quest74041:OnSubStart7404108(arg1)
    print("OnSubStart7404108")
end

function Quest74041:OnSubFinish7404108(arg1)
    print("OnSubFinish7404108")
end

function Quest74041:OnSubStart7404115(arg1)
    print("OnSubStart7404115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5224Data.id, 7404115, 0, 30, 1)
end

function Quest74041:OnSubFinish7404115(arg1)
    print("OnSubFinish7404115")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
end

function Quest74041:OnSubStart7404109(arg1)
    print("OnSubStart7404109")
    actorMgr:CreateActorWithPos("Q7404109Trigger", "Actor/Gadget/Q7404109Trigger", 70900002, 0, points.TPos_Q7404109Trigger.pos, points.TPos_Q7404109Trigger.rot, true, false, 3)
end

function Quest74041:OnSubFinish7404109(arg1)
    print("OnSubFinish7404109")
end

function Quest74041:OnSubStart7404110(arg1)
    print("OnSubStart7404110")
end

function Quest74041:OnSubFinish7404110(arg1)
    print("OnSubFinish7404110")
    this:ShowBlackScreenWithDialogText(0.5, 4, 0.5, nil, nil, nil, 740411701, false, true)
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02, nil, 74041)
end

function Quest74041:OnSubStart7404111(arg1)
    print("OnSubStart7404111")
    this:CreateQuestNpc(arg1, npcs.Npc21071Data.id, 0)
    actorMgr:CreateActorWithPos("Q7404111Trigger", "Actor/Gadget/Q7404111Trigger", 70900002, 0, points.TPos_Q7404111Trigger.pos, points.TPos_Q7404111Trigger.rot, true, false, 3)
end

function Quest74041:OnSubFinish7404111(arg1)
    print("OnSubFinish7404111")
    this:NPCDestroyImmediately(npcs.Npc21071Data.alias, 3)
end

function Quest74041:OnSubStart7404112(arg1)
    print("OnSubStart7404112")
end

function Quest74041:OnSubFinish7404112(arg1)
    print("OnSubFinish7404112")
end

function Quest74041:OnSubStart7404113(arg1)
    print("OnSubStart7404113")
    this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21071Data.id, 7404113, 0, 30, 2)
end

function Quest74041:OnSubFinish7404113(arg1)
    print("OnSubFinish7404113")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5224Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21071Data.alias, 3)
end

return Quest74041
