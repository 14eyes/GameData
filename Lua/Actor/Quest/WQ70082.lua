require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70082 = class("Quest70082", QuestActorProxy)
Quest70082.defaultAlias = "Quest70082"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70082:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70082:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008201"] = self.OnSubStart7008201}
end

function Quest70082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008201"] = self.OnSubFinish7008201}
end

function Quest70082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70082:Start()
    print("Start")
end

function Quest70082:OnDestroy()
    print("OnDestroy")
end

function Quest70082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70082:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70082:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70082:OnSubStart7008201(arg1)
    print("OnSubStart7008201")
    this:CreateQuestNpc(arg1, npcs.Npc22377.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22377.alias, 70082):DoFreeStyle(8073, true, nil, true, true, false, false)
end

function Quest70082:OnSubFinish7008201(arg1)
    print("OnSubFinish7008201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22377.alias)
end

return Quest70082
