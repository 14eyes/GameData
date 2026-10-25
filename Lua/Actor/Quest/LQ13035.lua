require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13035 = class("Quest13035", QuestActorProxy)
Quest13035.defaultAlias = "Quest13035"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13035:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303501"] = self.OnSubStart1303501,
        ["1303506"] = self.OnSubStart1303506,
        ["1303502"] = self.OnSubStart1303502,
        ["1303503"] = self.OnSubStart1303503,
        ["1303504"] = self.OnSubStart1303504,
        ["1303505"] = self.OnSubStart1303505
    }
end

function Quest13035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303501"] = self.OnSubFinish1303501,
        ["1303506"] = self.OnSubFinish1303506,
        ["1303502"] = self.OnSubFinish1303502,
        ["1303503"] = self.OnSubFinish1303503,
        ["1303504"] = self.OnSubFinish1303504,
        ["1303505"] = self.OnSubFinish1303505
    }
end

function Quest13035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13035:Start()
    print("Start")
end

function Quest13035:OnDestroy()
    print("OnDestroy")
end

function Quest13035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13035:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest13035:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest13035:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest13035:OnSubStart1303501(arg1)
    print("OnSubStart1303501")
    actorUtils.FinishQuestID(false, 1303501)
end

function Quest13035:OnSubFinish1303501(arg1)
    print("OnSubFinish1303501")
    this:QuestNarratorTask(datas.NarratorWithId1303501)
end

function Quest13035:OnSubStart1303506(arg1)
    print("OnSubStart1303506")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1058Data.id, 1303506, 0, 20, 1, false)
end

function Quest13035:OnSubFinish1303506(arg1)
    print("OnSubFinish1303506")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest13035:OnSubStart1303502(arg1)
    print("OnSubStart1303502")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc13992Data.id, 1303502, 0, 19, 1, false)
end

function Quest13035:OnSubFinish1303502(arg1)
    print("OnSubFinish1303502")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13996Data.alias, 3)
end

function Quest13035:OnSubStart1303503(arg1)
    print("OnSubStart1303503")
    this:NpcCreateWithNpcTrigger(npcs.Npc13091Data.id, 1303503, 0, 25)
    this:GetQuestNpcActor(npcs.Npc13091Data.alias):SitOnChair(0, true)
end

function Quest13035:OnSubFinish1303503(arg1)
    print("OnSubFinish1303503")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc13994Data.alias, 1073)
end

function Quest13035:OnSubStart1303504(arg1)
    print("OnSubStart1303504")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1058Data.id, 1303504, 0, 40, 1, true)
end

function Quest13035:OnSubFinish1303504(arg1)
    print("OnSubFinish1303504")
    this:TransmitPlayerByData(arg1, 1303504, datas.TransmitData1303504)
    this:NPCDestroyImmediately(npcs.Npc1058Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1072)
    this:SafeDestroyQuestNpc(npcs.Npc4030Data.alias, 1072)
end

function Quest13035:OnSubStart1303505(arg1)
    print("OnSubStart1303505")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1058Data.id, 1303505, 0, 20, 1, true)
end

function Quest13035:OnSubFinish1303505(arg1)
    print("OnSubFinish1303505")
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13992Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
end

return Quest13035
