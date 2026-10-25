require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71816 = class("Quest71816", QuestActorProxy)
Quest71816.defaultAlias = "Quest71816"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71816:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71816:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181609"] = self.OnSubStart7181609,
        ["7181601"] = self.OnSubStart7181601,
        ["7181603"] = self.OnSubStart7181603,
        ["7181604"] = self.OnSubStart7181604,
        ["7181605"] = self.OnSubStart7181605,
        ["7181606"] = self.OnSubStart7181606,
        ["7181608"] = self.OnSubStart7181608,
        ["7181607"] = self.OnSubStart7181607,
        ["7181610"] = self.OnSubStart7181610,
        ["7181602"] = self.OnSubStart7181602
    }
end

function Quest71816:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181609"] = self.OnSubFinish7181609,
        ["7181601"] = self.OnSubFinish7181601,
        ["7181603"] = self.OnSubFinish7181603,
        ["7181604"] = self.OnSubFinish7181604,
        ["7181605"] = self.OnSubFinish7181605,
        ["7181606"] = self.OnSubFinish7181606,
        ["7181608"] = self.OnSubFinish7181608,
        ["7181607"] = self.OnSubFinish7181607,
        ["7181610"] = self.OnSubFinish7181610,
        ["7181602"] = self.OnSubFinish7181602
    }
end

function Quest71816:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181609"] = self.OnSubFailed7181609,
        ["7181601"] = self.OnSubFailed7181601,
        ["7181603"] = self.OnSubFailed7181603,
        ["7181604"] = self.OnSubFailed7181604,
        ["7181605"] = self.OnSubFailed7181605,
        ["7181606"] = self.OnSubFailed7181606,
        ["7181608"] = self.OnSubFailed7181608,
        ["7181607"] = self.OnSubFailed7181607,
        ["7181610"] = self.OnSubFailed7181610,
        ["7181602"] = self.OnSubFailed7181602
    }
end

function Quest71816:Start()
    print("Start")
end

function Quest71816:OnDestroy()
    print("OnDestroy")
end

function Quest71816:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71816:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71816:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc220701Data1.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc206301Data.alias, 3)
    self:NotifyTo("Npc2207", 0, true)
    self:NotifyTo("Npc2063", 0, true)
end

function Quest71816:ClearHuangshanDuplicateOnly()
    print("ClearHuangshanDuplicateOnly")
    self:DestroyQuestNpcActor(npcs.Npc220701Data1.alias, 3)
end

function Quest71816:BlackClearHuangshanDuplicate()
    print("BlackClearHuangshanDuplicate")
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearHuangshanDuplicateOnly, nil, nil, "")
end

function Quest71816:ClearFrancis()
    print("ClearFrancis")
    self:DestroyQuestNpcActor(npcs.Npc206301Data.alias, 3)
    self:NotifyTo("Npc2063", 0, true)
end

function Quest71816:BlackClearFrancis()
    print("BlackClearFrancis")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.ClearFrancis, nil, nil, "")
end

function Quest71816:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 7181607)
        end

        print("Talk7181606or7181607:Finishi Quest 7181607")
    end
end

function Quest71816:ClearHuangshanAll()
    print("ClearHuangshanAll")
    self:DestroyQuestNpcActor(npcs.Npc220701Data2.alias, 3)
    self:NotifyTo("Npc2207", 0, true)
end

function Quest71816:BlackClearHuangshanAll()
    print("BlackClearHuangshanAll")
    self:ShowBlackScreen(0.2, 1.2, 0.5, self.ClearHuangshanAll, nil, nil, "")
end

function Quest71816:OnSubStart7181609(arg1)
    print("OnSubStart7181609")
end

function Quest71816:OnSubFinish7181609(arg1)
    print("OnSubFinish7181609")
end

function Quest71816:OnSubFailed7181609(arg1)
    print("OnSubFailed7181609")
end

function Quest71816:OnSubStart7181601(arg1)
    print("OnSubStart7181601")
    self:CreateQuestNpc(arg1, npcs.Npc220701Data1.id, 1)
    self:GetQuestNpcActor(npcs.Npc220701Data1.alias):SitOnChair(8010)
    self:NotifyTo("Npc2207", 1, true)
end

function Quest71816:OnSubFinish7181601(arg1)
    print("OnSubFinish7181601")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc220701Data1.alias)
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            questNpcActor:Standby()
            self:CreateQuestNpc(arg1, npcs.Npc220701Data2.id, 2)
        end, nil, nil, "")
    end)
end

function Quest71816:OnSubFailed7181601(arg1)
    print("OnSubFailed7181601")
end

function Quest71816:OnSubStart7181603(arg1)
    print("OnSubStart7181603")
    self:NotifyTo("Npc2207", 1, true)
    self:NotifyTo("Npc2063", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc206301Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc206301Data.alias):DoFreeStyle(1120, true, nil, true, true)
end

function Quest71816:OnSubFinish7181603(arg1)
    print("OnSubFinish7181603")
    self:ActionSafeCall(self.BlackClearHuangshanDuplicate)
end

function Quest71816:OnSubFailed7181603(arg1)
    print("OnSubFailed7181603")
end

function Quest71816:OnSubStart7181604(arg1)
    print("OnSubStart7181604")
    self:NotifyTo("Npc2207", 1, true)
    self:NotifyTo("Npc2063", 1, true)
end

function Quest71816:OnSubFinish7181604(arg1)
    print("OnSubFinish7181604")
end

function Quest71816:OnSubFailed7181604(arg1)
    print("OnSubFailed7181604")
    self:ShowBlackScreen(2, 1, 0.5, nil, nil, nil, "")
end

function Quest71816:OnSubStart7181605(arg1)
    print("OnSubStart7181605")
    self:NotifyTo("Npc2207", 1, true)
    self:NotifyTo("Npc2063", 1, true)
end

function Quest71816:OnSubFinish7181605(arg1)
    print("OnSubFinish7181605")
    self:ActionSafeCall(self.BlackClearFrancis)
end

function Quest71816:OnSubFailed7181605(arg1)
    print("OnSubFailed7181605")
end

function Quest71816:OnSubStart7181606(arg1)
    print("OnSubStart7181606")
    self:CreateQuestNpc(arg1, npcs.Npc220701Data3.id, 4)
    self:NotifyTo("Npc2207", 1, true)
end

function Quest71816:OnSubFinish7181606(arg1)
    print("OnSubFinish7181606")
end

function Quest71816:OnSubFailed7181606(arg1)
    print("OnSubFailed7181606")
end

function Quest71816:OnSubStart7181608(arg1)
    print("OnSubStart7181608")
    self:NotifyTo("Npc2207", 1, true)
end

function Quest71816:OnSubFinish7181608(arg1)
    print("OnSubFinish7181608")
    self:ActionSafeCall(self.BlackClearHuangshanAll)
end

function Quest71816:OnSubFailed7181608(arg1)
    print("OnSubFailed7181608")
end

function Quest71816:OnSubStart7181607(arg1)
    print("OnSubStart7181607")
    self:NotifyTo("Npc2207", 1, true)
end

function Quest71816:OnSubFinish7181607(arg1)
    print("OnSubFinish7181607")
end

function Quest71816:OnSubFailed7181607(arg1)
    print("OnSubFailed7181607")
end

function Quest71816:OnSubStart7181610(arg1)
    print("OnSubStart7181610")
end

function Quest71816:OnSubFinish7181610(arg1)
    print("OnSubFinish7181610")
end

function Quest71816:OnSubFailed7181610(arg1)
    print("OnSubFailed7181610")
end

function Quest71816:OnSubStart7181602(arg1)
    print("OnSubStart7181602")
    self:NotifyTo("Npc2207", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc206301Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc206301Data.alias):DoFreeStyle(1050, true, nil, true, true)
    self:NotifyTo("Npc2063", 1, true)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc220701Data2.id, 2)
    end)
end

function Quest71816:OnSubFinish7181602(arg1)
    print("OnSubFinish7181602")
end

function Quest71816:OnSubFailed7181602(arg1)
    print("OnSubFailed7181602")
end

return Quest71816
