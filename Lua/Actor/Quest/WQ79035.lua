require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79035 = class("Quest79035", QuestActorProxy)
Quest79035.defaultAlias = "Quest79035"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79035:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79035:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7903501"] = self.OnSubStart7903501}
end

function Quest79035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7903501"] = self.OnSubFinish7903501}
end

function Quest79035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79035:Start()
    print("Start")
end

function Quest79035:OnDestroy()
    print("OnDestroy")
end

function Quest79035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79035:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest79035:OnSubStart7903501(arg1)
    print("OnSubStart7903501")
    self:CreateQuestNpc(arg1, npcs.NPC1512Data.id, 1)
end

function Quest79035:OnSubFinish7903501(arg1)
    print("OnSubFinish7903501")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC1512Data.alias)
end

return Quest79035
