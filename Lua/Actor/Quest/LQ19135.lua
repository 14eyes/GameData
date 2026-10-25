require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19135 = class("Quest19135", QuestActorProxy)
Quest19135.defaultAlias = "Quest19135"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19135:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913501"] = self.OnSubStart1913501,
        ["1913502"] = self.OnSubStart1913502,
        ["1913503"] = self.OnSubStart1913503
    }
end

function Quest19135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913501"] = self.OnSubFinish1913501,
        ["1913502"] = self.OnSubFinish1913502,
        ["1913503"] = self.OnSubFinish1913503
    }
end

function Quest19135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19135:Start()
    print("Start")
end

function Quest19135:OnDestroy()
    print("OnDestroy")
end

function Quest19135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19135:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19135:OnSubStart1913501(arg1)
    print("OnSubStart1913501")
    self:CreateQuestNpc(arg1, npcs.Npc2083Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913501)
end

function Quest19135:OnSubFinish1913501(arg1)
    print("OnSubFinish1913501")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId01)
    end)
end

function Quest19135:OnSubStart1913502(arg1)
    print("OnSubStart1913502")
    self:CreateQuestNpc(arg1, npcs.Npc2020Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913502)
end

function Quest19135:OnSubFinish1913502(arg1)
    print("OnSubFinish1913502")
    self:SafeDestroyQuestNpc(npcs.Npc2083Data.alias, 3)
end

function Quest19135:OnSubStart1913503(arg1)
    print("OnSubStart1913503")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913503)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    end)
end

function Quest19135:OnSubFinish1913503(arg1)
    print("OnSubFinish1913503")
    self:SafeDestroyQuestNpc(npcs.Npc2020Data.alias, 3)
end

return Quest19135
