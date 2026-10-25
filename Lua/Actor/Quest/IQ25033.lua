require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25033 = class("Quest25033", QuestActorProxy)
Quest25033.defaultAlias = "Quest25033"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest25033:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest25033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503301"] = self.OnSubStart2503301,
        ["2503302"] = self.OnSubStart2503302,
        ["2503303"] = self.OnSubStart2503303,
        ["2503305"] = self.OnSubStart2503305,
        ["2503304"] = self.OnSubStart2503304
    }
end

function Quest25033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503301"] = self.OnSubFinish2503301,
        ["2503302"] = self.OnSubFinish2503302,
        ["2503303"] = self.OnSubFinish2503303,
        ["2503305"] = self.OnSubFinish2503305,
        ["2503304"] = self.OnSubFinish2503304
    }
end

function Quest25033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25033:Start()
    print("Start")
end

function Quest25033:OnDestroy()
    print("OnDestroy")
end

function Quest25033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14372.alias, 3)
    this:DestroyNpcTrigger("Q2503301N14371Trigger")
    this:DestroyNpcTrigger("Q2503304N14371Trigger")
    this:DestroyNpcTrigger("Q2503305N1005Trigger")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest25033:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25033:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest25033:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25033:OnSubStart2503301(arg1)
    print("OnSubStart2503301")
    local questVar = this:GetQuestVar(2503301, 0)
    if questVar == 0 then
        this:NpcCreateWithNpcTrigger(npcs.Npc14371.id, 0, 5, 2503301)
    elseif questVar == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc14371.id, 0, false, 0)
    end

    this:CreateQuestNpc(arg1, npcs.Npc14372.id, 0, false, 0)
end

function Quest25033:OnSubFinish2503301(arg1)
    print("OnSubFinish2503301")
end

function Quest25033:OnSubStart2503302(arg1)
    print("OnSubStart2503302")
end

function Quest25033:OnSubFinish2503302(arg1)
    print("OnSubFinish2503302")
end

function Quest25033:OnSubStart2503303(arg1)
    print("OnSubStart2503303")
end

function Quest25033:OnSubFinish2503303(arg1)
    print("OnSubFinish2503303")
end

function Quest25033:OnSubStart2503305(arg1)
    print("OnSubStart2503305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503305, 0, 15, 0.5, npcs.Paimon.id)
end

function Quest25033:OnSubFinish2503305(arg1)
    print("OnSubFinish2503305")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData_2503302, nil, nil, nil)
end

function Quest25033:OnSubStart2503304(arg1)
    print("OnSubStart2503304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc14371.id, 0, 2503304, 30, false)
end

function Quest25033:OnSubFinish2503304(arg1)
    print("OnSubFinish2503304")
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14372.alias, 3)
    this:DestroyNpcTrigger("Q2503305N1005Trigger")
end

return Quest25033
