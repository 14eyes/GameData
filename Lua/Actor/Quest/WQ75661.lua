require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75661 = class("Quest75661", QuestActorProxy)
Quest75661.defaultAlias = "Quest75661"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75661:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75661:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566101"] = self.OnSubStart7566101}
end

function Quest75661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566101"] = self.OnSubFinish7566101}
end

function Quest75661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7566101"] = self.OnSubFailed7566101}
end

function Quest75661:Start()
    print("Start")
end

function Quest75661:OnDestroy()
    print("OnDestroy")
end

function Quest75661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75661:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
end

function Quest75661:OnSubStart7566101(arg1)
    print("OnSubStart7566101")
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
end

function Quest75661:OnSubFinish7566101(arg1)
    print("OnSubFinish7566101")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
end

function Quest75661:OnSubFailed7566101(arg1)
    print("OnSubFailed7566101")
    this:DestroyQuestNpcActor("1092", 3)
end

return Quest75661
