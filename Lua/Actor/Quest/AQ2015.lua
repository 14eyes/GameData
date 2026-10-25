require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2015 = class("Quest2015", QuestActorProxy)
Quest2015.defaultAlias = "Quest2015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201501"] = self.OnSubStart201501,
        ["201502"] = self.OnSubStart201502,
        ["201503"] = self.OnSubStart201503,
        ["201504"] = self.OnSubStart201504,
        ["201505"] = self.OnSubStart201505
    }
end

function Quest2015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201501"] = self.OnSubFinish201501,
        ["201502"] = self.OnSubFinish201502,
        ["201503"] = self.OnSubFinish201503,
        ["201504"] = self.OnSubFinish201504,
        ["201505"] = self.OnSubFinish201505
    }
end

function Quest2015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201501"] = self.OnSubFailed201501,
        ["201502"] = self.OnSubFailed201502,
        ["201503"] = self.OnSubFailed201503,
        ["201504"] = self.OnSubFailed201504,
        ["201505"] = self.OnSubFailed201505
    }
end

function Quest2015:Start()
    print("Start")
end

function Quest2015:OnDestroy()
    print("OnDestroy")
end

function Quest2015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2015:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest2015:OnSubStart201501(arg1)
    print("OnSubStart201501")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12072Data.id, 2)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12072Data.alias)
        questNpcActor:DoFreeStyle(4110, true, nil, true, true, false)
        arg1_2:NotifyTo(npcs.Npc3146Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 4)
        arg1_2:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
        questNpcActor:LookAt({x = -3975.681, y = 164.9, z = -798.6})
    end)
end

function Quest2015:OnSubFinish201501(arg1)
    print("OnSubFinish201501")
end

function Quest2015:OnSubFailed201501(arg1)
    print("OnSubFailed201501")
end

function Quest2015:OnSubStart201502(arg1)
    print("OnSubStart201502")
    self:NotifyTo(npcs.Npc3146Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q2015Trigger", "Actor/Gadget/Q2015Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q201503Target").pos, sceneData:GetDummyPoint(3, "Q201503Target").rot, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12072Data.alias)
    questNpcActor:DoFreeStyle(4110, true, nil, true, true, false)
    questNpcActor:LookAt({x = -3975.681, y = 164.9, z = -798.6})
end

function Quest2015:OnSubFinish201502(arg1)
    print("OnSubFinish201502")
    self:SafeDestroyQuestNpc(npcs.Npc12072Data.alias, 3)
end

function Quest2015:OnSubFailed201502(arg1)
    print("OnSubFailed201502")
end

function Quest2015:OnSubStart201503(arg1)
    print("OnSubStart201503")
    self:LightNotifyTo(npcs.Npc3146Data.alias, 0, true)
end

function Quest2015:OnSubFinish201503(arg1)
    print("OnSubFinish201503")
end

function Quest2015:OnSubFailed201503(arg1)
    print("OnSubFailed201503")
end

function Quest2015:OnSubStart201504(arg1)
    print("OnSubStart201504")
    self:DestroyQuestNpcActor(npcs.Npc10013Data.alias, 20113)
    self:DestroyQuestNpcActor("Paimon", 20113)
    self:DelaySpawnGadget(arg1, 71700323, 1, 0)
    self:CreateQuestNpc(arg1, 12296, 2)
end

function Quest2015:OnSubFinish201504(arg1)
    print("OnSubFinish201504")
end

function Quest2015:OnSubFailed201504(arg1)
    print("OnSubFailed201504")
end

function Quest2015:OnSubStart201505(arg1)
    print("OnSubStart201505")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc10013Data.id, 1, npcs.Npc10013Data.alias)
end

function Quest2015:OnSubFinish201505(arg1)
    print("OnSubFinish201505")
end

function Quest2015:OnSubFailed201505(arg1)
    print("OnSubFailed201505")
end

return Quest2015
