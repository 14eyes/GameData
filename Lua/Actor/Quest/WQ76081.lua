require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76081 = class("Quest76081", QuestActorProxy)
Quest76081.defaultAlias = "Quest76081"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76081:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608101"] = self.OnSubStart7608101,
        ["7608102"] = self.OnSubStart7608102,
        ["7608103"] = self.OnSubStart7608103,
        ["7608104"] = self.OnSubStart7608104
    }
end

function Quest76081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608101"] = self.OnSubFinish7608101,
        ["7608102"] = self.OnSubFinish7608102,
        ["7608103"] = self.OnSubFinish7608103,
        ["7608104"] = self.OnSubFinish7608104
    }
end

function Quest76081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76081:Start()
    print("Start")
end

function Quest76081:OnDestroy()
    print("OnDestroy")
end

function Quest76081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76081:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76081:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76081:OnSubStart7608101(arg1)
    print("OnSubStart7608101")
end

function Quest76081:OnSubFinish7608101(arg1)
    print("OnSubFinish7608101")
    this:CallDelayByQuest("", 1, function(arg1)
        this:ActionSafeCall(function(arg1)
            local questGlobalVar = this:GetQuestGlobalVar(7608102)
            local v = this:GetQuestGlobalVar(7608102)
            if questGlobalVar == 1 then
                this:QuestNarratorTask(datas.NarratorWithId_Ffinish3, nil)
            elseif v == 2 then
                this:QuestNarratorTask(datas.NarratorWithId_Yfinish3, nil)
            end
        end)
    end)
end

function Quest76081:OnSubStart7608102(arg1)
    print("OnSubStart7608102")
    this:CreateQuestNpc(arg1, npcs.Npc22183.id, 0, false, 0)
end

function Quest76081:OnSubFinish7608102(arg1)
    print("OnSubFinish7608102")
    this:SafeDestroyQuestNpc(npcs.Npc22183.alias, 3)
end

function Quest76081:OnSubStart7608103(arg1)
    print("OnSubStart7608103")
end

function Quest76081:OnSubFinish7608103(arg1)
    print("OnSubFinish7608103")
end

function Quest76081:OnSubStart7608104(arg1)
    print("OnSubStart7608104")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7608104, 0, 40, 0, npcs.Npc22183.id)
end

function Quest76081:OnSubFinish7608104(arg1)
    print("OnSubFinish7608104")
    this:SafeDestroyQuestNpc(npcs.Npc22183.alias, 3)
end

return Quest76081
