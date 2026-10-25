require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70547 = class("Quest70547", QuestActorProxy)
Quest70547.defaultAlias = "Quest70547"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70547:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70547:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054701"] = self.OnSubStart7054701}
end

function Quest70547:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054701"] = self.OnSubFinish7054701}
end

function Quest70547:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70547:Start()
    print("Start")
end

function Quest70547:OnDestroy()
    print("OnDestroy")
end

function Quest70547:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70547:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70547:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 3)
end

function Quest70547:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70547:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70547:OnSubStart7054701(arg1)
    print("OnSubStart7054701")
    this:CreateQuestNpc(arg1, npcs.Npc30531.id, 0, false, 0)
end

function Quest70547:OnSubFinish7054701(arg1)
    print("OnSubFinish7054701")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30531.alias)
end

return Quest70547
