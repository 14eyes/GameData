require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23008 = class("Quest23008", QuestActorProxy)
Quest23008.defaultAlias = "Quest23008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300801"] = self.OnSubStart2300801,
        ["2300802"] = self.OnSubStart2300802,
        ["2300803"] = self.OnSubStart2300803
    }
end

function Quest23008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300801"] = self.OnSubFinish2300801,
        ["2300802"] = self.OnSubFinish2300802,
        ["2300803"] = self.OnSubFinish2300803
    }
end

function Quest23008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23008:Start()
    print("Start")
end

function Quest23008:OnDestroy()
    print("OnDestroy")
end

function Quest23008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23008:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4016Data.alias, 3)
end

function Quest23008:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23008:OnSubStart2300801(arg1)
    print("OnSubStart2300801")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
end

function Quest23008:OnSubFinish2300801(arg1)
    print("OnSubFinish2300801")
end

function Quest23008:OnSubStart2300802(arg1)
    print("OnSubStart2300802")
end

function Quest23008:OnSubFinish2300802(arg1)
    print("OnSubFinish2300802")
end

function Quest23008:OnSubStart2300803(arg1)
    print("OnSubStart2300803")
end

function Quest23008:OnSubFinish2300803(arg1)
    print("OnSubFinish2300803")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4016Data.alias)
end

return Quest23008
