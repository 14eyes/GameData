require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74127 = class("Quest74127", QuestActorProxy)
Quest74127.defaultAlias = "Quest74127"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74127:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7412701"] = self.OnSubStart7412701,
        ["7412706"] = self.OnSubStart7412706,
        ["7412707"] = self.OnSubStart7412707,
        ["7412702"] = self.OnSubStart7412702,
        ["7412703"] = self.OnSubStart7412703,
        ["7412708"] = self.OnSubStart7412708,
        ["7412709"] = self.OnSubStart7412709,
        ["7412704"] = self.OnSubStart7412704,
        ["7412705"] = self.OnSubStart7412705
    }
end

function Quest74127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7412701"] = self.OnSubFinish7412701,
        ["7412706"] = self.OnSubFinish7412706,
        ["7412707"] = self.OnSubFinish7412707,
        ["7412702"] = self.OnSubFinish7412702,
        ["7412703"] = self.OnSubFinish7412703,
        ["7412708"] = self.OnSubFinish7412708,
        ["7412709"] = self.OnSubFinish7412709,
        ["7412704"] = self.OnSubFinish7412704,
        ["7412705"] = self.OnSubFinish7412705
    }
end

function Quest74127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74127:Start()
    print("Start")
end

function Quest74127:OnDestroy()
    print("OnDestroy")
end

function Quest74127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74127:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74127:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74127:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74127:OnSubStart7412701(arg1)
    print("OnSubStart7412701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5084Data.id, 7412701, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5258Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5257Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7412701Trigger", "Actor/Gadget/Q7412701Trigger", 70900002, 0, points.TPos_Q7412701Trigger.pos, points.TPos_Q7412701Trigger.rot, true, false, 3)
end

function Quest74127:OnSubFinish7412701(arg1)
    print("OnSubFinish7412701")
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
end

function Quest74127:OnSubStart7412706(arg1)
    print("OnSubStart7412706")
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5257Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7412706Trigger", "Actor/Gadget/Q7412706Trigger", 70900002, 0, points.TPos_Q7412706Trigger.pos, points.TPos_Q7412706Trigger.rot, true, false, 3)
end

function Quest74127:OnSubFinish7412706(arg1)
    print("OnSubFinish7412706")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7412706)
    this:LightNotifyTo(npcs.Npc5258Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5257Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc5258Data.alias, 3)
end

function Quest74127:OnSubStart7412707(arg1)
    print("OnSubStart7412707")
end

function Quest74127:OnSubFinish7412707(arg1)
    print("OnSubFinish7412707")
end

function Quest74127:OnSubStart7412702(arg1)
    print("OnSubStart7412702")
    this:NpcCreateWithNpcTrigger(npcs.Npc5084Data.id, 7412702, 0, 35)
end

function Quest74127:OnSubFinish7412702(arg1)
    print("OnSubFinish7412702")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
end

function Quest74127:OnSubStart7412703(arg1)
    print("OnSubStart7412703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5084Data.id, 7412703, 0, 10, 1)
end

function Quest74127:OnSubFinish7412703(arg1)
    print("OnSubFinish7412703")
end

function Quest74127:OnSubStart7412708(arg1)
    print("OnSubStart7412708")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0)
end

function Quest74127:OnSubFinish7412708(arg1)
    print("OnSubFinish7412708")
end

function Quest74127:OnSubStart7412709(arg1)
    print("OnSubStart7412709")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 0)
end

function Quest74127:OnSubFinish7412709(arg1)
    print("OnSubFinish7412709")
end

function Quest74127:OnSubStart7412704(arg1)
    print("OnSubStart7412704")
    this:NpcCreateWithNpcTrigger(npcs.Npc5084Data.id, 7412704, 0, 10)
end

function Quest74127:OnSubFinish7412704(arg1)
    print("OnSubFinish7412704")
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
end

function Quest74127:OnSubStart7412705(arg1)
    print("OnSubStart7412705")
    this:NpcCreateWithNpcTrigger(npcs.Npc5253Data.id, 7412705, 0, 8)
end

function Quest74127:OnSubFinish7412705(arg1)
    print("OnSubFinish7412705")
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5253Data.alias, 3)
end

return Quest74127
