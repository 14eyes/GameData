require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76047 = class("Quest76047", QuestActorProxy)
Quest76047.defaultAlias = "Quest76047"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76047:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604701"] = self.OnSubStart7604701,
        ["7604702"] = self.OnSubStart7604702,
        ["7604703"] = self.OnSubStart7604703
    }
end

function Quest76047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604701"] = self.OnSubFinish7604701,
        ["7604702"] = self.OnSubFinish7604702,
        ["7604703"] = self.OnSubFinish7604703
    }
end

function Quest76047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76047:Start()
    print("Start")
end

function Quest76047:OnDestroy()
    print("OnDestroy")
end

function Quest76047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76047:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7604701Trigger")
end

function Quest76047:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76047:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76047:OnSubStart7604701(arg1)
    print("OnSubStart7604701")
    this:NpcCreateWithNpcTrigger(npcs.Npc7042.id, 0, 15, 7604701)
    this:GetQuestNpcActor(npcs.Npc7042.alias, 76047):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76047:OnSubFinish7604701(arg1)
    print("OnSubFinish7604701")
    this:SafeDestroyQuestNpc(npcs.Npc7042.alias, 3)
end

function Quest76047:OnSubStart7604702(arg1)
    print("OnSubStart7604702")
    this:CreateQuestNpc(arg1, npcs.Npc7008.id, 0, false, 0)
end

function Quest76047:OnSubFinish7604702(arg1)
    print("OnSubFinish7604702")
    this:SafeDestroyQuestNpc(npcs.Npc7008.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_760479901, nil)
    end)
end

function Quest76047:OnSubStart7604703(arg1)
    print("OnSubStart7604703")
    actorUtils.FinishQuestID(true, 7604703)
end

function Quest76047:OnSubFinish7604703(arg1)
    print("OnSubFinish7604703")
end

return Quest76047
