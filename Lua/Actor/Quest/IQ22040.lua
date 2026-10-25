require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22040 = class("Quest22040", QuestActorProxy)
Quest22040.defaultAlias = "Quest22040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204001"] = self.OnSubStart2204001,
        ["2204002"] = self.OnSubStart2204002,
        ["2204003"] = self.OnSubStart2204003,
        ["2204004"] = self.OnSubStart2204004
    }
end

function Quest22040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204001"] = self.OnSubFinish2204001,
        ["2204002"] = self.OnSubFinish2204002,
        ["2204003"] = self.OnSubFinish2204003,
        ["2204004"] = self.OnSubFinish2204004
    }
end

function Quest22040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204001"] = self.OnSubFailed2204001,
        ["2204002"] = self.OnSubFailed2204002,
        ["2204003"] = self.OnSubFailed2204003,
        ["2204004"] = self.OnSubFailed2204004
    }
end

function Quest22040:Start()
    print("Start")
end

function Quest22040:OnDestroy()
    print("OnDestroy")
end

function Quest22040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22040:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3022Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3012Data.alias, 0, true)
end

function Quest22040:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22040:OnSubStart2204001(arg1)
    print("OnSubStart2204001")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest22040:OnSubFinish2204001(arg1)
    print("OnSubFinish2204001")
end

function Quest22040:OnSubFailed2204001(arg1)
    print("OnSubFailed2204001")
end

function Quest22040:OnSubStart2204002(arg1)
    print("OnSubStart2204002")
    self:NotifyTo(npcs.Npc3022Data.alias, 2, true)
end

function Quest22040:OnSubFinish2204002(arg1)
    print("OnSubFinish2204002")
end

function Quest22040:OnSubFailed2204002(arg1)
    print("OnSubFailed2204002")
end

function Quest22040:OnSubStart2204003(arg1)
    print("OnSubStart2204003")
    self:NotifyTo(npcs.Npc3012Data.alias, 2, true)
end

function Quest22040:OnSubFinish2204003(arg1)
    print("OnSubFinish2204003")
end

function Quest22040:OnSubFailed2204003(arg1)
    print("OnSubFailed2204003")
end

function Quest22040:OnSubStart2204004(arg1)
    print("OnSubStart2204004")
end

function Quest22040:OnSubFinish2204004(arg1)
    print("OnSubFinish2204004")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3006Data.alias)
    self:LightNotifyTo(npcs.Npc3022Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3012Data.alias, 0, true)
end

function Quest22040:OnSubFailed2204004(arg1)
    print("OnSubFailed2204004")
end

return Quest22040
