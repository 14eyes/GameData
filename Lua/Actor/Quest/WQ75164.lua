require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75164 = class("Quest75164", QuestActorProxy)
Quest75164.defaultAlias = "Quest75164"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75164:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75164:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7516401"] = self.OnSubStart7516401,
        ["7516402"] = self.OnSubStart7516402,
        ["7516403"] = self.OnSubStart7516403,
        ["7516404"] = self.OnSubStart7516404
    }
end

function Quest75164:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7516401"] = self.OnSubFinish7516401,
        ["7516402"] = self.OnSubFinish7516402,
        ["7516403"] = self.OnSubFinish7516403,
        ["7516404"] = self.OnSubFinish7516404
    }
end

function Quest75164:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75164:Start()
    print("Start")
end

function Quest75164:OnDestroy()
    print("OnDestroy")
end

function Quest75164:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75164:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75164:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75164:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75164:OnSubStart7516401(arg1)
    print("OnSubStart7516401")
    this:CreateQuestNpc(arg1, npcs.Npc6463.id, 0, false, 0)
end

function Quest75164:OnSubFinish7516401(arg1)
    print("OnSubFinish7516401")
end

function Quest75164:OnSubStart7516402(arg1)
    print("OnSubStart7516402")
end

function Quest75164:OnSubFinish7516402(arg1)
    print("OnSubFinish7516402")
end

function Quest75164:OnSubStart7516403(arg1)
    print("OnSubStart7516403")
end

function Quest75164:OnSubFinish7516403(arg1)
    print("OnSubFinish7516403")
end

function Quest75164:OnSubStart7516404(arg1)
    print("OnSubStart7516404")
end

function Quest75164:OnSubFinish7516404(arg1)
    print("OnSubFinish7516404")
end

return Quest75164
