require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70510 = class("Quest70510", QuestActorProxy)
Quest70510.defaultAlias = "Quest70510"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70510:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70510:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7051001"] = self.OnSubStart7051001, ["7051002"] = self.OnSubStart7051002}
end

function Quest70510:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7051001"] = self.OnSubFinish7051001, ["7051002"] = self.OnSubFinish7051002}
end

function Quest70510:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70510:Start()
    print("Start")
end

function Quest70510:OnDestroy()
    print("OnDestroy")
end

function Quest70510:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70510:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70510:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30112Data.alias, 3)
end

function Quest70510:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest70510:OnSubStart7051001(arg1)
    print("OnSubStart7051001")
    self:CreateQuestNpc(arg1, npcs.Npc30112Data.id, 1)
end

function Quest70510:OnSubFinish7051001(arg1)
    print("OnSubFinish7051001")
    self:NpcDestroyWithDither(npcs.Npc30112Data.alias, 3)
end

function Quest70510:OnSubStart7051002(arg1)
    print("OnSubStart7051002")
end

function Quest70510:OnSubFinish7051002(arg1)
    print("OnSubFinish7051002")
end

return Quest70510
