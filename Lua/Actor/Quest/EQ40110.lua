require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40110 = class("Quest40110", QuestActorProxy)
Quest40110.defaultAlias = "Quest40110"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40110:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011001"] = self.OnSubStart4011001,
        ["4011002"] = self.OnSubStart4011002,
        ["4011003"] = self.OnSubStart4011003,
        ["4011004"] = self.OnSubStart4011004,
        ["4011005"] = self.OnSubStart4011005,
        ["4011006"] = self.OnSubStart4011006,
        ["4011013"] = self.OnSubStart4011013,
        ["4011007"] = self.OnSubStart4011007,
        ["4011008"] = self.OnSubStart4011008,
        ["4011009"] = self.OnSubStart4011009,
        ["4011010"] = self.OnSubStart4011010,
        ["4011011"] = self.OnSubStart4011011,
        ["4011012"] = self.OnSubStart4011012
    }
end

function Quest40110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011001"] = self.OnSubFinish4011001,
        ["4011002"] = self.OnSubFinish4011002,
        ["4011003"] = self.OnSubFinish4011003,
        ["4011004"] = self.OnSubFinish4011004,
        ["4011005"] = self.OnSubFinish4011005,
        ["4011006"] = self.OnSubFinish4011006,
        ["4011013"] = self.OnSubFinish4011013,
        ["4011007"] = self.OnSubFinish4011007,
        ["4011008"] = self.OnSubFinish4011008,
        ["4011009"] = self.OnSubFinish4011009,
        ["4011010"] = self.OnSubFinish4011010,
        ["4011011"] = self.OnSubFinish4011011,
        ["4011012"] = self.OnSubFinish4011012
    }
end

function Quest40110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40110:Start()
    print("Start")
end

function Quest40110:OnDestroy()
    print("OnDestroy")
end

function Quest40110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40110:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30362Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30363Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30364Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4331Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4328Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4321Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30365Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4011003Trigger", 3, false)
end

function Quest40110:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40110:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40110:OnSubStart4011001(arg1)
    print("OnSubStart4011001")
end

function Quest40110:OnSubFinish4011001(arg1)
    print("OnSubFinish4011001")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4011001)
end

function Quest40110:OnSubStart4011002(arg1)
    print("OnSubStart4011002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4011002, 1, 5, 1)
end

function Quest40110:OnSubFinish4011002(arg1)
    print("OnSubFinish4011002")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest40110:OnSubStart4011003(arg1)
    print("OnSubStart4011003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1069Data.id, 4011003, 2, 8, 1)
    actorMgr:CreateActorWithPos("Q4011003Trigger", "Actor/Gadget/Q4011003Trigger", 70900002, 0, points.TPos_Q4011003Trigger.pos, points.TPos_Q4011003Trigger.rot, true, false, 3)
end

function Quest40110:OnSubFinish4011003(arg1)
    print("OnSubFinish4011003")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest40110:OnSubStart4011004(arg1)
    print("OnSubStart4011004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1058Data.id, 4011004, 2, 5, 1)
end

function Quest40110:OnSubFinish4011004(arg1)
    print("OnSubFinish4011004")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30362Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30363Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30364Data.alias, 3)
end

function Quest40110:OnSubStart4011005(arg1)
    print("OnSubStart4011005")
end

function Quest40110:OnSubFinish4011005(arg1)
    print("OnSubFinish4011005")
    this:TransmitPlayerWithTextById(arg1, 4011005, datas.TextmapId4011006, 1)
end

function Quest40110:OnSubStart4011006(arg1)
    print("OnSubStart4011006")
    this:NpcCreateWithNpcTrigger(npcs.Npc30362Data.id, 4011006, 4, 8)
end

function Quest40110:OnSubFinish4011006(arg1)
    print("OnSubFinish4011006")
    this:TransmitPlayerWithTextById(arg1, 4011006, datas.TextmapId4011006, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30362Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30363Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30364Data.alias, 3)
end

function Quest40110:OnSubStart4011013(arg1)
    print("OnSubStart4011013")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1058Data.id, 4011013, 3, 10, 1)
end

function Quest40110:OnSubFinish4011013(arg1)
    print("OnSubFinish4011013")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest40110:OnSubStart4011007(arg1)
    print("OnSubStart4011007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1069Data.id, 4011007, 2, 5, 1)
end

function Quest40110:OnSubFinish4011007(arg1)
    print("OnSubFinish4011007")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

function Quest40110:OnSubStart4011008(arg1)
    print("OnSubStart4011008")
    this:CreateQuestNpc(arg1, npcs.Npc4331Data.id, 3)
end

function Quest40110:OnSubFinish4011008(arg1)
    print("OnSubFinish4011008")
    this:SafeDestroyQuestNpc(npcs.Npc4331Data.alias, 3)
end

function Quest40110:OnSubStart4011009(arg1)
    print("OnSubStart4011009")
    this:CreateQuestNpc(arg1, npcs.Npc4328Data.id, 3)
end

function Quest40110:OnSubFinish4011009(arg1)
    print("OnSubFinish4011009")
    this:SafeDestroyQuestNpc(npcs.Npc4328Data.alias, 3)
end

function Quest40110:OnSubStart4011010(arg1)
    print("OnSubStart4011010")
    this:CreateQuestNpc(arg1, npcs.Npc4321Data.id, 3)
end

function Quest40110:OnSubFinish4011010(arg1)
    print("OnSubFinish4011010")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4321Data.alias, 3)
end

function Quest40110:OnSubStart4011011(arg1)
    print("OnSubStart4011011")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30365Data.id, 4011011, 3, 5, 1)
end

function Quest40110:OnSubFinish4011011(arg1)
    print("OnSubFinish4011011")
    this:TransmitPlayerWithDialogTextById(arg1, 4011011, datas.DialogsId401101163, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc30365Data.alias, 3)
end

function Quest40110:OnSubStart4011012(arg1)
    print("OnSubStart4011012")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4011012, 1, 10, 1)
end

function Quest40110:OnSubFinish4011012(arg1)
    print("OnSubFinish4011012")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

return Quest40110
