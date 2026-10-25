require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75258 = class("Quest75258", QuestActorProxy)
Quest75258.defaultAlias = "Quest75258"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75258:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75258:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7525801"] = self.OnSubStart7525801}
end

function Quest75258:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7525801"] = self.OnSubFinish7525801}
end

function Quest75258:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75258:Start()
    print("Start")
end

function Quest75258:OnDestroy()
    print("OnDestroy")
end

function Quest75258:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75258:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75258:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75258:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75258:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75258:OnSubStart7525801(arg1)
    print("OnSubStart7525801")
    this:CreateQuestNpc(arg1, npcs.Npc21981.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21981.alias, 75258):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21981.alias, 75258):DisableInteeHeadCtrl(true)
end

function Quest75258:OnSubFinish7525801(arg1)
    print("OnSubFinish7525801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21981.alias)
end

return Quest75258
