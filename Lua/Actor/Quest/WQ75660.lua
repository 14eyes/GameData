require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75660 = class("Quest75660", QuestActorProxy)
Quest75660.defaultAlias = "Quest75660"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75660:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75660:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7566001"] = self.OnSubStart7566001}
end

function Quest75660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7566001"] = self.OnSubFinish7566001}
end

function Quest75660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7566001"] = self.OnSubFailed7566001}
end

function Quest75660:Start()
    print("Start")
end

function Quest75660:OnDestroy()
    print("OnDestroy")
end

function Quest75660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75660:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest75660:OnSubStart7566001(arg1)
    print("OnSubStart7566001")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
end

function Quest75660:OnSubFinish7566001(arg1)
    print("OnSubFinish7566001")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
end

function Quest75660:OnSubFailed7566001(arg1)
    print("OnSubFailed7566001")
    this:DestroyQuestNpcActor("1095", 3)
end

return Quest75660
