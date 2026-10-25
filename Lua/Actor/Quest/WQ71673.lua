require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71673 = class("Quest71673", QuestActorProxy)
Quest71673.defaultAlias = "Quest71673"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71673:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71673:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167301"] = self.OnSubStart7167301}
end

function Quest71673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167301"] = self.OnSubFinish7167301}
end

function Quest71673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71673:Start()
    print("Start")
end

function Quest71673:OnDestroy()
    print("OnDestroy")
end

function Quest71673:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71673:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71673:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30952.alias, 3)
end

function Quest71673:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71673:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71673:OnSubStart7167301(arg1)
    print("OnSubStart7167301")
    this:CreateQuestNpc(arg1, npcs.Npc30952.id, 0, false, 0)
end

function Quest71673:OnSubFinish7167301(arg1)
    print("OnSubFinish7167301")
    this:NpcDestroyImmediately(3, npcs.Npc30952.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2477, nil)
    end)
end

return Quest71673
