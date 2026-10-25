require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75658 = class("Quest75658", QuestActorProxy)
Quest75658.defaultAlias = "Quest75658"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75658:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565801"] = self.OnSubStart7565801}
end

function Quest75658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565801"] = self.OnSubFinish7565801}
end

function Quest75658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75658:Start()
    print("Start")
end

function Quest75658:OnDestroy()
    print("OnDestroy")
end

function Quest75658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75658:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30718.alias, 3)
end

function Quest75658:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75658:OnSubStart7565801(arg1)
    print("OnSubStart7565801")
    this:CreateQuestNpc(arg1, npcs.Npc30718.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30718.alias, 75658):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest75658:OnSubFinish7565801(arg1)
    print("OnSubFinish7565801")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30718.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1999, nil)
    end)
end

return Quest75658
