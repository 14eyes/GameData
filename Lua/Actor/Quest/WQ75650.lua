require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75650 = class("Quest75650", QuestActorProxy)
Quest75650.defaultAlias = "Quest75650"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75650:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565001"] = self.OnSubStart7565001}
end

function Quest75650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565001"] = self.OnSubFinish7565001}
end

function Quest75650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75650:Start()
    print("Start")
end

function Quest75650:OnDestroy()
    print("OnDestroy")
end

function Quest75650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75650:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6004Data.alias, 3)
end

function Quest75650:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75650:OnSubStart7565001(arg1)
    print("OnSubStart7565001")
    this:CreateQuestNpc(arg1, npcs.Npc6004Data.id, 0, false, 0)
end

function Quest75650:OnSubFinish7565001(arg1)
    print("OnSubFinish7565001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6004Data.alias)
end

return Quest75650
