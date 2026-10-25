require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70695 = class("Quest70695", QuestActorProxy)
Quest70695.defaultAlias = "Quest70695"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70695:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70695:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7069501"] = self.OnSubStart7069501}
end

function Quest70695:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7069501"] = self.OnSubFinish7069501}
end

function Quest70695:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70695:Start()
    print("Start")
end

function Quest70695:OnDestroy()
    print("OnDestroy")
end

function Quest70695:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70695:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70695:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
end

function Quest70695:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70695:OnSubStart7069501(arg1)
    print("OnSubStart7069501")
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
end

function Quest70695:OnSubFinish7069501(arg1)
    print("OnSubFinish7069501")
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
end

return Quest70695
