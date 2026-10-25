require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76079 = class("Quest76079", QuestActorProxy)
Quest76079.defaultAlias = "Quest76079"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76079:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607901"] = self.OnSubStart7607901,
        ["7607902"] = self.OnSubStart7607902,
        ["7607903"] = self.OnSubStart7607903,
        ["7607904"] = self.OnSubStart7607904
    }
end

function Quest76079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607901"] = self.OnSubFinish7607901,
        ["7607902"] = self.OnSubFinish7607902,
        ["7607903"] = self.OnSubFinish7607903,
        ["7607904"] = self.OnSubFinish7607904
    }
end

function Quest76079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76079:Start()
    print("Start")
end

function Quest76079:OnDestroy()
    print("OnDestroy")
end

function Quest76079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76079:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76079:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76079:OnSubStart7607901(arg1)
    print("OnSubStart7607901")
end

function Quest76079:OnSubFinish7607901(arg1)
    print("OnSubFinish7607901")
end

function Quest76079:OnSubStart7607902(arg1)
    print("OnSubStart7607902")
    this:CreateQuestNpc(arg1, npcs.Npc22184.id, 0, false, 0)
end

function Quest76079:OnSubFinish7607902(arg1)
    print("OnSubFinish7607902")
    this:SafeDestroyQuestNpc(npcs.Npc22184.alias, 3)
end

function Quest76079:OnSubStart7607903(arg1)
    print("OnSubStart7607903")
end

function Quest76079:OnSubFinish7607903(arg1)
    print("OnSubFinish7607903")
end

function Quest76079:OnSubStart7607904(arg1)
    print("OnSubStart7607904")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7607904, 0, 40, 0, npcs.Npc22184.id)
end

function Quest76079:OnSubFinish7607904(arg1)
    print("OnSubFinish7607904")
    this:SafeDestroyQuestNpc(npcs.Npc22184.alias, 3)
end

return Quest76079
