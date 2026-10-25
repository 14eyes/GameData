require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70535 = class("Quest70535", QuestActorProxy)
Quest70535.defaultAlias = "Quest70535"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70535:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70535:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7053501"] = self.OnSubStart7053501,
        ["7053502"] = self.OnSubStart7053502,
        ["7053503"] = self.OnSubStart7053503
    }
end

function Quest70535:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7053501"] = self.OnSubFinish7053501,
        ["7053502"] = self.OnSubFinish7053502,
        ["7053503"] = self.OnSubFinish7053503
    }
end

function Quest70535:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70535:Start()
    print("Start")
end

function Quest70535:OnDestroy()
    print("OnDestroy")
end

function Quest70535:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70535:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70535:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    actorMgr:DestroyEntityActor("Q7053503N10090Trigger", 3, false)
end

function Quest70535:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest70535:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest70535:OnSubStart7053501(arg1)
    print("OnSubStart7053501")
    actorUtils.FinishQuestID(false, 7053501)
end

function Quest70535:OnSubFinish7053501(arg1)
    print("OnSubFinish7053501")
    if this:GetSubQuestState(401101) ~= 2 then
        if this:GetSubQuestState(4012301) ~= 2 then
            if this:GetSubQuestState(4012401) ~= 2 then
                if this:GetSubQuestState(4012601) ~= 2 then
                    this:NarratorOnlyTaskByData(datas.Narrator_7053501, nil, 70535)
                end
            end
        end
    end
end

function Quest70535:OnSubStart7053502(arg1)
    print("OnSubStart7053502")
    this:NpcCreateWithNpcTrigger(npcs.Npc10090Data.id, 7053502, 0, 5)
    this:CreateQuestNpc(arg1, npcs.LisaData.id, 0)
end

function Quest70535:OnSubFinish7053502(arg1)
    print("OnSubFinish7053502")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 1004)
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
end

function Quest70535:OnSubStart7053503(arg1)
    print("OnSubStart7053503")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc10090Data.id, 7053503, 0, 8, 1, false)
end

function Quest70535:OnSubFinish7053503(arg1)
    print("OnSubFinish7053503")
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 3)
end

return Quest70535
