require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22048 = class("Quest22048", QuestActorProxy)
Quest22048.defaultAlias = "Quest22048"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22048:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204801"] = self.OnSubStart2204801,
        ["2204802"] = self.OnSubStart2204802,
        ["2204803"] = self.OnSubStart2204803
    }
end

function Quest22048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204801"] = self.OnSubFinish2204801,
        ["2204802"] = self.OnSubFinish2204802,
        ["2204803"] = self.OnSubFinish2204803
    }
end

function Quest22048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204801"] = self.OnSubFailed2204801,
        ["2204802"] = self.OnSubFailed2204802,
        ["2204803"] = self.OnSubFailed2204803
    }
end

function Quest22048:Start()
    print("Start")
end

function Quest22048:OnDestroy()
    print("OnDestroy")
end

function Quest22048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22048:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22048:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22048:OnSubStart2204801(arg1)
    print("OnSubStart2204801")
    self:CreateQuestNpc(arg1, npcs.Npc3189Data.id, 1)
end

function Quest22048:OnSubFinish2204801(arg1)
    print("OnSubFinish2204801")
end

function Quest22048:OnSubFailed2204801(arg1)
    print("OnSubFailed2204801")
end

function Quest22048:OnSubStart2204802(arg1)
    print("OnSubStart2204802")
end

function Quest22048:OnSubFinish2204802(arg1)
    print("OnSubFinish2204802")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22048:OnSubFailed2204802(arg1)
    print("OnSubFailed2204802")
end

function Quest22048:OnSubStart2204803(arg1)
    print("OnSubStart2204803")
end

function Quest22048:OnSubFinish2204803(arg1)
    print("OnSubFinish2204803")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
end

function Quest22048:OnSubFailed2204803(arg1)
    print("OnSubFailed2204803")
end

return Quest22048
