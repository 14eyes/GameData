require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75270 = class("Quest75270", QuestActorProxy)
Quest75270.defaultAlias = "Quest75270"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75270:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75270:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7527002"] = self.OnSubStart7527002,
        ["7527003"] = self.OnSubStart7527003,
        ["7527004"] = self.OnSubStart7527004,
        ["7527001"] = self.OnSubStart7527001
    }
end

function Quest75270:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7527002"] = self.OnSubFinish7527002,
        ["7527003"] = self.OnSubFinish7527003,
        ["7527004"] = self.OnSubFinish7527004,
        ["7527001"] = self.OnSubFinish7527001
    }
end

function Quest75270:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75270:Start()
    print("Start")
end

function Quest75270:OnDestroy()
    print("OnDestroy")
end

function Quest75270:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75270:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75270:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75270:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75270:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75270:OnSubStart7527002(arg1)
    print("OnSubStart7527002")
    this:CreateQuestNpc(arg1, npcs.Npc22031.id, 0, false, 0)
end

function Quest75270:OnSubFinish7527002(arg1)
    print("OnSubFinish7527002")
end

function Quest75270:OnSubStart7527003(arg1)
    print("OnSubStart7527003")
end

function Quest75270:OnSubFinish7527003(arg1)
    print("OnSubFinish7527003")
end

function Quest75270:OnSubStart7527004(arg1)
    print("OnSubStart7527004")
end

function Quest75270:OnSubFinish7527004(arg1)
    print("OnSubFinish7527004")
    this:NpcDestroyImmediately(3, npcs.Npc22031.alias)
end

function Quest75270:OnSubStart7527001(arg1)
    print("OnSubStart7527001")
end

function Quest75270:OnSubFinish7527001(arg1)
    print("OnSubFinish7527001")
end

return Quest75270
