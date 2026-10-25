require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75281 = class("Quest75281", QuestActorProxy)
Quest75281.defaultAlias = "Quest75281"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75281:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75281:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7528101"] = self.OnSubStart7528101,
        ["7528102"] = self.OnSubStart7528102,
        ["7528103"] = self.OnSubStart7528103
    }
end

function Quest75281:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7528101"] = self.OnSubFinish7528101,
        ["7528102"] = self.OnSubFinish7528102,
        ["7528103"] = self.OnSubFinish7528103
    }
end

function Quest75281:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75281:Start()
    print("Start")
end

function Quest75281:OnDestroy()
    print("OnDestroy")
end

function Quest75281:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75281:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75281:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75281:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75281:OnSubStart7528101(arg1)
    print("OnSubStart7528101")
end

function Quest75281:OnSubFinish7528101(arg1)
    print("OnSubFinish7528101")
end

function Quest75281:OnSubStart7528102(arg1)
    print("OnSubStart7528102")
end

function Quest75281:OnSubFinish7528102(arg1)
    print("OnSubFinish7528102")
end

function Quest75281:OnSubStart7528103(arg1)
    print("OnSubStart7528103")
    this:CreateQuestNpc(arg1, npcs.Npc22165.id, 0, false, 0)
end

function Quest75281:OnSubFinish7528103(arg1)
    print("OnSubFinish7528103")
end

return Quest75281
