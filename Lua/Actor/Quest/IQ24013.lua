require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24013 = class("Quest24013", QuestActorProxy)
Quest24013.defaultAlias = "Quest24013"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401301"] = self.OnSubStart2401301,
        ["2401302"] = self.OnSubStart2401302,
        ["2401305"] = self.OnSubStart2401305,
        ["2401303"] = self.OnSubStart2401303,
        ["2401306"] = self.OnSubStart2401306,
        ["2401304"] = self.OnSubStart2401304
    }
end

function Quest24013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401301"] = self.OnSubFinish2401301,
        ["2401302"] = self.OnSubFinish2401302,
        ["2401305"] = self.OnSubFinish2401305,
        ["2401303"] = self.OnSubFinish2401303,
        ["2401306"] = self.OnSubFinish2401306,
        ["2401304"] = self.OnSubFinish2401304
    }
end

function Quest24013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24013:Start()
    print("Start")
end

function Quest24013:OnDestroy()
    print("OnDestroy")
end

function Quest24013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13357Data.alias, 3)
end

function Quest24013:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24013:OnSubStart2401301(arg1)
    print("OnSubStart2401301")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 1)
    if this:IsPlayerSitOnChair(3, {x = 3520.22, y = 421.425, z = 4610.196}, 0.8) then
        this:PlayerStandFromChair(0)
        this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3520.22, y = 421.425, z = 4610.196}, {x = 0.0, y = 338.455, z = 0.0}, 0)
    else
        this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3520.22, y = 421.425, z = 4610.196}, {x = 0.0, y = 338.455, z = 0.0}, 0)
    end
end

function Quest24013:OnSubFinish2401301(arg1)
    print("OnSubFinish2401301")
end

function Quest24013:OnSubStart2401302(arg1)
    print("OnSubStart2401302")
    this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnTargetChair(8010, {x = 3520.22, y = 421.425, z = 4610.196}, {x = 0.0, y = 338.455, z = 0.0}, 0)
    questNpcActor:DoFreeStyle(8061, true, nil, true, true, true, true)
end

function Quest24013:OnSubFinish2401302(arg1)
    print("OnSubFinish2401302")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest24013:OnSubStart2401305(arg1)
    print("OnSubStart2401305")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnChair(8060, true)
    questNpcActor:DoFreeStyle(8061, true, nil, true, true, true, true)
end

function Quest24013:OnSubFinish2401305(arg1)
    print("OnSubFinish2401305")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest24013:OnSubStart2401303(arg1)
    print("OnSubStart2401303")
    this:CreateQuestNpc(arg1, npcs.Npc13357Data.id, 2)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:SitOnChair(8060, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5053Data.id, 1)
        this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(4260, true, nil, true, true, true, false)
    end)

    questNpcActor:DoFreeStyle(8061, true, nil, true, true, true, true)
end

function Quest24013:OnSubFinish2401303(arg1)
    print("OnSubFinish2401303")
end

function Quest24013:OnSubStart2401306(arg1)
    print("OnSubStart2401306")
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(4260, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(8061, true, nil, true, true, true, true)
end

function Quest24013:OnSubFinish2401306(arg1)
    print("OnSubFinish2401306")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13357Data.alias)
end

function Quest24013:OnSubStart2401304(arg1)
    print("OnSubStart2401304")
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc5053Data.alias):DoFreeStyle(4260, true, nil, true, true, true, false)
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(8061, true, nil, true, true, true, true)
end

function Quest24013:OnSubFinish2401304(arg1)
    print("OnSubFinish2401304")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5053Data.alias, 3)
end

return Quest24013
