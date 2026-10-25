require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71674 = class("Quest71674", QuestActorProxy)
Quest71674.defaultAlias = "Quest71674"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71674:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167401"] = self.OnSubStart7167401}
end

function Quest71674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167401"] = self.OnSubFinish7167401}
end

function Quest71674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71674:Start()
    print("Start")
end

function Quest71674:OnDestroy()
    print("OnDestroy")
end

function Quest71674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71674:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30953.alias, 3)
end

function Quest71674:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71674:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71674:OnSubStart7167401(arg1)
    print("OnSubStart7167401")
    this:CreateQuestNpc(arg1, npcs.Npc30953.id, 0, false, 0)
end

function Quest71674:OnSubFinish7167401(arg1)
    print("OnSubFinish7167401")
    this:NpcDestroyImmediately(3, npcs.Npc30953.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2489, nil)
    end)
end

return Quest71674
