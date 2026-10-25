require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77151 = class("Quest77151", QuestActorProxy)
Quest77151.defaultAlias = "Quest77151"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77151:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715101"] = self.OnSubStart7715101,
        ["7715102"] = self.OnSubStart7715102,
        ["7715103"] = self.OnSubStart7715103,
        ["7715104"] = self.OnSubStart7715104
    }
end

function Quest77151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715101"] = self.OnSubFinish7715101,
        ["7715102"] = self.OnSubFinish7715102,
        ["7715103"] = self.OnSubFinish7715103,
        ["7715104"] = self.OnSubFinish7715104
    }
end

function Quest77151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77151:Start()
    print("Start")
end

function Quest77151:OnDestroy()
    print("OnDestroy")
end

function Quest77151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77151:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77151:OnSubStart7715101(arg1)
    print("OnSubStart7715101")
    this:CreateQuestNpc(arg1, npcs.Npc22601.id, 0, false, 0)
end

function Quest77151:OnSubFinish7715101(arg1)
    print("OnSubFinish7715101")
end

function Quest77151:OnSubStart7715102(arg1)
    print("OnSubStart7715102")
end

function Quest77151:OnSubFinish7715102(arg1)
    print("OnSubFinish7715102")
end

function Quest77151:OnSubStart7715103(arg1)
    print("OnSubStart7715103")
end

function Quest77151:OnSubFinish7715103(arg1)
    print("OnSubFinish7715103")
end

function Quest77151:OnSubStart7715104(arg1)
    print("OnSubStart7715104")
end

function Quest77151:OnSubFinish7715104(arg1)
    print("OnSubFinish7715104")
end

return Quest77151
