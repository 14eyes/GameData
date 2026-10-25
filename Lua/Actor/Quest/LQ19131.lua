require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19131 = class("Quest19131", QuestActorProxy)
Quest19131.defaultAlias = "Quest19131"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19131:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913101"] = self.OnSubStart1913101,
        ["1913102"] = self.OnSubStart1913102,
        ["1913103"] = self.OnSubStart1913103,
        ["1913104"] = self.OnSubStart1913104
    }
end

function Quest19131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913101"] = self.OnSubFinish1913101,
        ["1913102"] = self.OnSubFinish1913102,
        ["1913103"] = self.OnSubFinish1913103,
        ["1913104"] = self.OnSubFinish1913104
    }
end

function Quest19131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19131:Start()
    print("Start")
end

function Quest19131:OnDestroy()
    print("OnDestroy")
end

function Quest19131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19131:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2142Data.alias, 1057)
    self:LightNotifyTo(npcs.Npc2143Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2140Data.alias, 0, true)
end

function Quest19131:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19131:OnSubStart1913101(arg1)
    print("OnSubStart1913101")
    self:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2140Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2142Data.id, 4)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913101)
end

function Quest19131:OnSubFinish1913101(arg1)
    print("OnSubFinish1913101")
    self:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 1057)
    self:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 1057)
end

function Quest19131:OnSubStart1913102(arg1)
    print("OnSubStart1913102")
    self:DailyNpcSafeHideSelf(npcs.Npc2143Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2140Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913102)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2142Data.id, 2)
    end)
end

function Quest19131:OnSubFinish1913102(arg1)
    print("OnSubFinish1913102")
end

function Quest19131:OnSubStart1913103(arg1)
    print("OnSubStart1913103")
end

function Quest19131:OnSubFinish1913103(arg1)
    print("OnSubFinish1913103")
end

function Quest19131:OnSubStart1913104(arg1)
    print("OnSubStart1913104")
end

function Quest19131:OnSubFinish1913104(arg1)
    print("OnSubFinish1913104")
end

return Quest19131
