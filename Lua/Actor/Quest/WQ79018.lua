require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79018 = class("Quest79018", QuestActorProxy)
Quest79018.defaultAlias = "Quest79018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7901801"] = self.OnSubStart7901801,
        ["7901802"] = self.OnSubStart7901802,
        ["7901803"] = self.OnSubStart7901803,
        ["7901804"] = self.OnSubStart7901804
    }
end

function Quest79018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7901801"] = self.OnSubFinish7901801,
        ["7901802"] = self.OnSubFinish7901802,
        ["7901803"] = self.OnSubFinish7901803,
        ["7901804"] = self.OnSubFinish7901804
    }
end

function Quest79018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79018:Start()
    print("Start")
end

function Quest79018:OnDestroy()
    print("OnDestroy")
end

function Quest79018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79018:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79018:OnSubStart7901801(arg1)
    print("OnSubStart7901801")
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest79018:OnSubFinish7901801(arg1)
    print("OnSubFinish7901801")
    self:NpcDestroyWithDither(npcs.AmborData.alias, npcs.AmborData.id)
end

function Quest79018:OnSubStart7901802(arg1)
    print("OnSubStart7901802")
end

function Quest79018:OnSubFinish7901802(arg1)
    print("OnSubFinish7901802")
end

function Quest79018:OnSubStart7901803(arg1)
    print("OnSubStart7901803")
end

function Quest79018:OnSubFinish7901803(arg1)
    print("OnSubFinish7901803")
end

function Quest79018:OnSubStart7901804(arg1)
    print("OnSubStart7901804")
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest79018:OnSubFinish7901804(arg1)
    print("OnSubFinish7901804")
    self:NpcDestroyWithDither(npcs.AmborData.alias, npcs.AmborData.id)
end

return Quest79018
