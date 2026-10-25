require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25029 = class("Quest25029", QuestActorProxy)
Quest25029.defaultAlias = "Quest25029"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest25029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest25029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502901"] = self.OnSubStart2502901,
        ["2502902"] = self.OnSubStart2502902,
        ["2502903"] = self.OnSubStart2502903,
        ["2502905"] = self.OnSubStart2502905,
        ["2502904"] = self.OnSubStart2502904
    }
end

function Quest25029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502901"] = self.OnSubFinish2502901,
        ["2502902"] = self.OnSubFinish2502902,
        ["2502903"] = self.OnSubFinish2502903,
        ["2502905"] = self.OnSubFinish2502905,
        ["2502904"] = self.OnSubFinish2502904
    }
end

function Quest25029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25029:Start()
    print("Start")
end

function Quest25029:OnDestroy()
    print("OnDestroy")
end

function Quest25029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14372.alias, 3)
    this:DestroyNpcTrigger("Q2502901N14371Trigger")
    this:DestroyNpcTrigger("Q2502904N14371Trigger")
    this:DestroyNpcTrigger("Q2502905N1005Trigger")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest25029:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25029:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest25029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25029:OnSubStart2502901(arg1)
    print("OnSubStart2502901")
    local questVar = this:GetQuestVar(2502901, 0)
    if questVar == 0 then
        this:NpcCreateWithNpcTrigger(npcs.Npc14371.id, 0, 5, 2502901)
    elseif questVar == 1 then
        this:CreateQuestNpc(arg1, npcs.Npc14371.id, 0, false, 0)
    end

    this:CreateQuestNpc(arg1, npcs.Npc14372.id, 0, false, 0)
end

function Quest25029:OnSubFinish2502901(arg1)
    print("OnSubFinish2502901")
end

function Quest25029:OnSubStart2502902(arg1)
    print("OnSubStart2502902")
end

function Quest25029:OnSubFinish2502902(arg1)
    print("OnSubFinish2502902")
end

function Quest25029:OnSubStart2502903(arg1)
    print("OnSubStart2502903")
end

function Quest25029:OnSubFinish2502903(arg1)
    print("OnSubFinish2502903")
end

function Quest25029:OnSubStart2502905(arg1)
    print("OnSubStart2502905")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2502905, 0, 15, 0.5, npcs.Paimon.id)
end

function Quest25029:OnSubFinish2502905(arg1)
    print("OnSubFinish2502905")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_2502902, nil, nil, nil)
end

function Quest25029:OnSubStart2502904(arg1)
    print("OnSubStart2502904")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc14371.id, 0, 2502904, 30, false)
    this:CreateQuestNpc(arg1, npcs.Npc14372.id, 0, false, 0)
end

function Quest25029:OnSubFinish2502904(arg1)
    print("OnSubFinish2502904")
    this:SafeDestroyQuestNpc(npcs.Npc14371.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14372.alias, 3)
    this:DestroyNpcTrigger("Q2502905N1005Trigger")
end

return Quest25029
