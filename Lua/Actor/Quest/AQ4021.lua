require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4021 = class("Quest4021", QuestActorProxy)
Quest4021.defaultAlias = "Quest4021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402101"] = self.OnSubStart402101,
        ["402103"] = self.OnSubStart402103,
        ["402104"] = self.OnSubStart402104,
        ["402105"] = self.OnSubStart402105,
        ["402106"] = self.OnSubStart402106,
        ["402107"] = self.OnSubStart402107,
        ["402108"] = self.OnSubStart402108,
        ["402116"] = self.OnSubStart402116,
        ["402109"] = self.OnSubStart402109,
        ["402115"] = self.OnSubStart402115,
        ["402110"] = self.OnSubStart402110,
        ["402113"] = self.OnSubStart402113,
        ["402114"] = self.OnSubStart402114
    }
end

function Quest4021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402101"] = self.OnSubFinish402101,
        ["402103"] = self.OnSubFinish402103,
        ["402104"] = self.OnSubFinish402104,
        ["402105"] = self.OnSubFinish402105,
        ["402106"] = self.OnSubFinish402106,
        ["402107"] = self.OnSubFinish402107,
        ["402108"] = self.OnSubFinish402108,
        ["402116"] = self.OnSubFinish402116,
        ["402109"] = self.OnSubFinish402109,
        ["402115"] = self.OnSubFinish402115,
        ["402110"] = self.OnSubFinish402110,
        ["402113"] = self.OnSubFinish402113,
        ["402114"] = self.OnSubFinish402114
    }
end

function Quest4021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4021:Start()
    print("Start")
end

function Quest4021:OnDestroy()
    print("OnDestroy")
end

function Quest4021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4021:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4021:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest4021:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4021:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest4021:OnSubStart402101(arg1)
    print("OnSubStart402101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10095Data.id, 402101, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5068Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q402101_TransmitTrigger", "Actor/Gadget/Q402101_TransmitTrigger", 70900002, 0, points.TPos_Q402101_TransmitTrigger.pos, points.TPos_Q402101_TransmitTrigger.rot, true, false, 3)
end

function Quest4021:OnSubFinish402101(arg1)
    print("OnSubFinish402101")
    this:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
end

function Quest4021:OnSubStart402103(arg1)
    print("OnSubStart402103")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13316Data.id, 0)
    this:LightNotifyTo(npcs.Npc5068Data.alias, 0, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc5087Data.id, 402103, 0, 10)
    this:ActorDestroy("Q402101_TransmitTrigger")
    this:ActionSafeCall(function(arg1)
        actorMgr:DestroyNpcActorByAlias("Npc107614009")
    end)
end

function Quest4021:OnSubFinish402103(arg1)
    print("OnSubFinish402103")
    this:NPCDestroyImmediately(npcs.Npc13316Data.alias, 1083)
    this:NPCDestroyImmediately(npcs.Npc5087Data.alias, 1083)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_01, 2, nil, nil)
end

function Quest4021:OnSubStart402104(arg1)
    print("OnSubStart402104")
end

function Quest4021:OnSubFinish402104(arg1)
    print("OnSubFinish402104")
end

function Quest4021:OnSubStart402105(arg1)
    print("OnSubStart402105")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc1077Data.id, 402105, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
end

function Quest4021:OnSubFinish402105(arg1)
    print("OnSubFinish402105")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
end

function Quest4021:OnSubStart402106(arg1)
    print("OnSubStart402106")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13611Data.id, 402106, 0, 10, 1)
end

function Quest4021:OnSubFinish402106(arg1)
    print("OnSubFinish402106")
    this:SafeDestroyQuestNpc(npcs.Npc13611Data.alias, 3)
end

function Quest4021:OnSubStart402107(arg1)
    print("OnSubStart402107")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc10095Data.id, 402107, 0, 15, 1)
end

function Quest4021:OnSubFinish402107(arg1)
    print("OnSubFinish402107")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
end

function Quest4021:OnSubStart402108(arg1)
    print("OnSubStart402108")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13612Data.id, 402108, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5052Data.alias, 1, true)
end

function Quest4021:OnSubFinish402108(arg1)
    print("OnSubFinish402108")
    this:SafeDestroyQuestNpc(npcs.Npc13612Data.alias, 3)
end

function Quest4021:OnSubStart402116(arg1)
    print("OnSubStart402116")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13612Data.id, 402116, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5052Data.alias, 1, true)
end

function Quest4021:OnSubFinish402116(arg1)
    print("OnSubFinish402116")
    this:NPCDestroyImmediately(npcs.Npc13612Data.alias, 3)
    this:TransmitPlayerById(arg1, 1)
end

function Quest4021:OnSubStart402109(arg1)
    print("OnSubStart402109")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13612Data.id, 402109, 0, 10, 1, true)
    this:LightNotifyTo(npcs.Npc5052Data.alias, 0, true)
end

function Quest4021:OnSubFinish402109(arg1)
    print("OnSubFinish402109")
    this:SafeDestroyQuestNpc(npcs.Npc13612Data.alias, 1084)
end

function Quest4021:OnSubStart402115(arg1)
    print("OnSubStart402115")
    actorMgr:CreateActorWithPos("Q4021Trigger", "Actor/Gadget/Q4021Trigger", 70900002, 0, points.TPos_Q4021Trigger.pos, points.TPos_Q4021Trigger.rot, true, false, 3)
end

function Quest4021:OnSubFinish402115(arg1)
    print("OnSubFinish402115")
end

function Quest4021:OnSubStart402110(arg1)
    print("OnSubStart402110")
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 402110, 0, 10)
end

function Quest4021:OnSubFinish402110(arg1)
    print("OnSubFinish402110")
    this:NPCDestroyImmediately(npcs.Npc1070Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, nil)
    this:ActorDestroy("Q4021Trigger")
end

function Quest4021:OnSubStart402113(arg1)
    print("OnSubStart402113")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13612Data.id, 402113, 0, 10, 1)
end

function Quest4021:OnSubFinish402113(arg1)
    print("OnSubFinish402113")
    this:NPCDestroyImmediately(npcs.Npc13612Data.alias, 3)
    this:TransmitPlayerByQuestId(402113, 1)
end

function Quest4021:OnSubStart402114(arg1)
    print("OnSubStart402114")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13612Data.id, 402114, 0, 10, 1, true)
end

function Quest4021:OnSubFinish402114(arg1)
    print("OnSubFinish402114")
    this:SafeDestroyQuestNpc(npcs.Npc13612Data.alias, 3)
end

return Quest4021
