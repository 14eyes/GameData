require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71672 = class("Quest71672", QuestActorProxy)
Quest71672.defaultAlias = "Quest71672"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71672:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71672:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7167201"] = self.OnSubStart7167201}
end

function Quest71672:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7167201"] = self.OnSubFinish7167201}
end

function Quest71672:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71672:Start()
    print("Start")
end

function Quest71672:OnDestroy()
    print("OnDestroy")
end

function Quest71672:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71672:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71672:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30951.alias, 3)
end

function Quest71672:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71672:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71672:OnSubStart7167201(arg1)
    print("OnSubStart7167201")
    this:CreateQuestNpc(arg1, npcs.Npc30951.id, 0, false, 0)
end

function Quest71672:OnSubFinish7167201(arg1)
    print("OnSubFinish7167201")
    this:NpcDestroyImmediately(3, npcs.Npc30951.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2525, nil)
    end)
end

return Quest71672
