require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75659 = class("Quest75659", QuestActorProxy)
Quest75659.defaultAlias = "Quest75659"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75659:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75659:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565901"] = self.OnSubStart7565901}
end

function Quest75659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565901"] = self.OnSubFinish7565901}
end

function Quest75659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7565901"] = self.OnSubFailed7565901}
end

function Quest75659:Start()
    print("Start")
end

function Quest75659:OnDestroy()
    print("OnDestroy")
end

function Quest75659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75659:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc15129.alias, 3)
end

function Quest75659:OnSubStart7565901(arg1)
    print("OnSubStart7565901")
    this:CreateQuestNpc(arg1, npcs.Npc15129.id, 0, false, 0)
end

function Quest75659:OnSubFinish7565901(arg1)
    print("OnSubFinish7565901")
    this:SafeDestroyQuestNpc(npcs.Npc15129.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2026, nil)
    end)
end

function Quest75659:OnSubFailed7565901(arg1)
    print("OnSubFailed7565901")
    this:DestroyQuestNpcActor("15129", 3)
end

return Quest75659
