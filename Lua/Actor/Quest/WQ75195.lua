require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75195 = class("Quest75195", QuestActorProxy)
Quest75195.defaultAlias = "Quest75195"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75195:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519501"] = self.OnSubStart7519501,
        ["7519502"] = self.OnSubStart7519502,
        ["7519504"] = self.OnSubStart7519504
    }
end

function Quest75195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519501"] = self.OnSubFinish7519501,
        ["7519502"] = self.OnSubFinish7519502,
        ["7519504"] = self.OnSubFinish7519504
    }
end

function Quest75195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75195:Start()
    print("Start")
end

function Quest75195:OnDestroy()
    print("OnDestroy")
end

function Quest75195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75195:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75195:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75195:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75195:OnSubStart7519501(arg1)
    print("OnSubStart7519501")
end

function Quest75195:OnSubFinish7519501(arg1)
    print("OnSubFinish7519501")
end

function Quest75195:OnSubStart7519502(arg1)
    print("OnSubStart7519502")
end

function Quest75195:OnSubFinish7519502(arg1)
    print("OnSubFinish7519502")
end

function Quest75195:OnSubStart7519504(arg1)
    print("OnSubStart7519504")
    this:CreateQuestNpc(arg1, npcs.Npc6469.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6469.alias, "", true)
end

function Quest75195:OnSubFinish7519504(arg1)
    print("OnSubFinish7519504")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6469.alias)
end

return Quest75195
