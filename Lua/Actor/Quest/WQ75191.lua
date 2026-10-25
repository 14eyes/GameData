require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75191 = class("Quest75191", QuestActorProxy)
Quest75191.defaultAlias = "Quest75191"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75191:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519101"] = self.OnSubStart7519101,
        ["7519102"] = self.OnSubStart7519102,
        ["7519103"] = self.OnSubStart7519103
    }
end

function Quest75191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519101"] = self.OnSubFinish7519101,
        ["7519102"] = self.OnSubFinish7519102,
        ["7519103"] = self.OnSubFinish7519103
    }
end

function Quest75191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75191:Start()
    print("Start")
end

function Quest75191:OnDestroy()
    print("OnDestroy")
end

function Quest75191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75191:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75191:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75191:OnSubStart7519101(arg1)
    print("OnSubStart7519101")
end

function Quest75191:OnSubFinish7519101(arg1)
    print("OnSubFinish7519101")
end

function Quest75191:OnSubStart7519102(arg1)
    print("OnSubStart7519102")
    this:CreateQuestNpc(arg1, npcs.Npc21807.id, 0, false, 0)
end

function Quest75191:OnSubFinish7519102(arg1)
    print("OnSubFinish7519102")
    this:SafeDestroyQuestNpc(npcs.Npc21807.alias, 101)
end

function Quest75191:OnSubStart7519103(arg1)
    print("OnSubStart7519103")
end

function Quest75191:OnSubFinish7519103(arg1)
    print("OnSubFinish7519103")
end

return Quest75191
