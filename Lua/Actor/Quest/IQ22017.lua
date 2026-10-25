require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22017 = class("Quest22017", QuestActorProxy)
Quest22017.defaultAlias = "Quest22017"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22017:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201701"] = self.OnSubStart2201701,
        ["2201702"] = self.OnSubStart2201702,
        ["2201703"] = self.OnSubStart2201703,
        ["2201704"] = self.OnSubStart2201704,
        ["2201706"] = self.OnSubStart2201706,
        ["2201705"] = self.OnSubStart2201705
    }
end

function Quest22017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201701"] = self.OnSubFinish2201701,
        ["2201702"] = self.OnSubFinish2201702,
        ["2201703"] = self.OnSubFinish2201703,
        ["2201704"] = self.OnSubFinish2201704,
        ["2201706"] = self.OnSubFinish2201706,
        ["2201705"] = self.OnSubFinish2201705
    }
end

function Quest22017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201701"] = self.OnSubFailed2201701,
        ["2201702"] = self.OnSubFailed2201702,
        ["2201703"] = self.OnSubFailed2201703,
        ["2201704"] = self.OnSubFailed2201704,
        ["2201706"] = self.OnSubFailed2201706,
        ["2201705"] = self.OnSubFailed2201705
    }
end

function Quest22017:Start()
    print("Start")
end

function Quest22017:OnDestroy()
    print("OnDestroy")
end

function Quest22017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22017:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
end

function Quest22017:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22017:OnSubStart2201701(arg1)
    print("OnSubStart2201701")
    self:CreateQuestNpc(arg1, npcs.Npc3033Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 2)
end

function Quest22017:OnSubFinish2201701(arg1)
    print("OnSubFinish2201701")
end

function Quest22017:OnSubFailed2201701(arg1)
    print("OnSubFailed2201701")
end

function Quest22017:OnSubStart2201702(arg1)
    print("OnSubStart2201702")
end

function Quest22017:OnSubFinish2201702(arg1)
    print("OnSubFinish2201702")
end

function Quest22017:OnSubFailed2201702(arg1)
    print("OnSubFailed2201702")
end

function Quest22017:OnSubStart2201703(arg1)
    print("OnSubStart2201703")
end

function Quest22017:OnSubFinish2201703(arg1)
    print("OnSubFinish2201703")
end

function Quest22017:OnSubFailed2201703(arg1)
    print("OnSubFailed2201703")
end

function Quest22017:OnSubStart2201704(arg1)
    print("OnSubStart2201704")
end

function Quest22017:OnSubFinish2201704(arg1)
    print("OnSubFinish2201704")
end

function Quest22017:OnSubFailed2201704(arg1)
    print("OnSubFailed2201704")
end

function Quest22017:OnSubStart2201705(arg1)
    print("OnSubStart2201705")
end

function Quest22017:OnSubFinish2201705(arg1)
    print("OnSubFinish2201705")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3033Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3032Data.alias)
end

function Quest22017:OnSubFailed2201705(arg1)
    print("OnSubFailed2201705")
end

function Quest22017:OnSubStart2201706(arg1)
    print("OnSubStart2201706")
end

function Quest22017:OnSubFinish2201706(arg1)
    print("OnSubFinish2201706")
end

function Quest22017:OnSubFailed2201706(arg1)
    print("OnSubFailed2201706")
end

return Quest22017
