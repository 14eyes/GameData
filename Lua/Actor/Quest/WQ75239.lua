require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75239 = class("Quest75239", QuestActorProxy)
Quest75239.defaultAlias = "Quest75239"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75239:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75239:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7523901"] = self.OnSubStart7523901,
        ["7523902"] = self.OnSubStart7523902,
        ["7523903"] = self.OnSubStart7523903
    }
end

function Quest75239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7523901"] = self.OnSubFinish7523901,
        ["7523902"] = self.OnSubFinish7523902,
        ["7523903"] = self.OnSubFinish7523903
    }
end

function Quest75239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75239:Start()
    print("Start")
end

function Quest75239:OnDestroy()
    print("OnDestroy")
end

function Quest75239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75239:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75239:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75239:OnSubStart7523901(arg1)
    print("OnSubStart7523901")
    this:CreateQuestNpc(arg1, npcs.Npc6513.id, 0, false, 0)
end

function Quest75239:OnSubFinish7523901(arg1)
    print("OnSubFinish7523901")
end

function Quest75239:OnSubStart7523902(arg1)
    print("OnSubStart7523902")
    this:CreateQuestNpc(arg1, npcs.Npc6513.id, 0, false, 0)
end

function Quest75239:OnSubFinish7523902(arg1)
    print("OnSubFinish7523902")
    this:CallDelayByQuest("101", 2, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.ClientConfigVar, nil, nil, nil)
    end)
end

function Quest75239:OnSubStart7523903(arg1)
    print("OnSubStart7523903")
    this:CreateQuestNpc(arg1, npcs.Npc6513.id, 0, false, 0)
end

function Quest75239:OnSubFinish7523903(arg1)
    print("OnSubFinish7523903")
    this:SafeDestroyQuestNpc(npcs.Npc6513.alias, 3)
end

return Quest75239
