require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20601 = class("Quest20601", QuestActorProxy)
Quest20601.defaultAlias = "Quest20601"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20601:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20601:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2060101"] = self.OnSubStart2060101,
        ["2060102"] = self.OnSubStart2060102,
        ["2060103"] = self.OnSubStart2060103,
        ["2060104"] = self.OnSubStart2060104,
        ["2060105"] = self.OnSubStart2060105,
        ["2060106"] = self.OnSubStart2060106,
        ["2060107"] = self.OnSubStart2060107,
        ["2060108"] = self.OnSubStart2060108,
        ["2060109"] = self.OnSubStart2060109
    }
end

function Quest20601:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2060101"] = self.OnSubFinish2060101,
        ["2060102"] = self.OnSubFinish2060102,
        ["2060103"] = self.OnSubFinish2060103,
        ["2060104"] = self.OnSubFinish2060104,
        ["2060105"] = self.OnSubFinish2060105,
        ["2060106"] = self.OnSubFinish2060106,
        ["2060107"] = self.OnSubFinish2060107,
        ["2060108"] = self.OnSubFinish2060108,
        ["2060109"] = self.OnSubFinish2060109
    }
end

function Quest20601:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2060101"] = self.OnSubFailed2060101,
        ["2060102"] = self.OnSubFailed2060102,
        ["2060103"] = self.OnSubFailed2060103,
        ["2060104"] = self.OnSubFailed2060104,
        ["2060105"] = self.OnSubFailed2060105,
        ["2060106"] = self.OnSubFailed2060106,
        ["2060107"] = self.OnSubFailed2060107,
        ["2060108"] = self.OnSubFailed2060108,
        ["2060109"] = self.OnSubFailed2060109
    }
end

function Quest20601:Start()
    print("Start")
end

function Quest20601:OnDestroy()
    print("OnDestroy")
end

function Quest20601:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearAll)
end

function Quest20601:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20601:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:CallDelay(0.5, self.ClearAll)
end

function Quest20601:ClearJack()
    print("ClearJack")
    self:DestroyQuestNpcActor(npcs.Npc1413Data.alias, 3)
end

function Quest20601:ClearCyrus()
    print("ClearCyrus")
    self:DestroyQuestNpcActor(npcs.Npc1409Data.alias, 3)
end

function Quest20601:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1409Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1413Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1413Data.alias, 3)
end

function Quest20601:OnSubStart2060101(arg1)
    print("OnSubStart2060101")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1413Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    self:GetQuestNpcActor(npcs.Npc1413Data.alias):HideSelf()
end

function Quest20601:OnSubFinish2060101(arg1)
    print("OnSubFinish2060101")
end

function Quest20601:OnSubFailed2060101(arg1)
    print("OnSubFailed2060101")
end

function Quest20601:OnSubStart2060102(arg1)
    print("OnSubStart2060102")
end

function Quest20601:OnSubFinish2060102(arg1)
    print("OnSubFinish2060102")
end

function Quest20601:OnSubFailed2060102(arg1)
    print("OnSubFailed2060102")
end

function Quest20601:OnSubStart2060103(arg1)
    print("OnSubStart2060103")
    self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    questNpcActor:ShowSelf()
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
end

function Quest20601:OnSubFinish2060103(arg1)
    print("OnSubFinish2060103")
end

function Quest20601:OnSubFailed2060103(arg1)
    print("OnSubFailed2060103")
end

function Quest20601:OnSubStart2060104(arg1)
    print("OnSubStart2060104")
end

function Quest20601:OnSubFinish2060104(arg1)
    print("OnSubFinish2060104")
    self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    questNpcActor:EnableInteraction(true)
    questNpcActor:DoFreeStyle(1300)
end

function Quest20601:OnSubFailed2060104(arg1)
    print("OnSubFailed2060104")
end

function Quest20601:OnSubStart2060105(arg1)
    print("OnSubStart2060105")
    self:GetQuestNpcActor(npcs.Npc1413Data.alias):Standby()
end

function Quest20601:OnSubFinish2060105(arg1)
    print("OnSubFinish2060105")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearJack)
end

function Quest20601:OnSubFailed2060105(arg1)
    print("OnSubFailed2060105")
end

function Quest20601:OnSubStart2060106(arg1)
    print("OnSubStart2060106")
end

function Quest20601:OnSubFinish2060106(arg1)
    print("OnSubFinish2060106")
    self:CreateQuestNpc(arg1, npcs.Npc1413Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    self:GetQuestNpcActor(npcs.Npc1413Data.alias):DoFreeStyle(1160)
end

function Quest20601:OnSubFailed2060106(arg1)
    print("OnSubFailed2060106")
end

function Quest20601:OnSubStart2060107(arg1)
    print("OnSubStart2060107")
end

function Quest20601:OnSubFinish2060107(arg1)
    print("OnSubFinish2060107")
end

function Quest20601:OnSubFailed2060107(arg1)
    print("OnSubFailed2060107")
end

function Quest20601:OnSubStart2060108(arg1)
    print("OnSubStart2060108")
end

function Quest20601:OnSubFinish2060108(arg1)
    print("OnSubFinish2060108")
    self:GetQuestNpcActor(npcs.Npc1413Data.alias)
    self:GetQuestNpcActor(npcs.Npc1413Data.alias):Standby()
end

function Quest20601:OnSubFailed2060108(arg1)
    print("OnSubFailed2060108")
end

function Quest20601:OnSubStart2060109(arg1)
    print("OnSubStart2060109")
end

function Quest20601:OnSubFinish2060109(arg1)
    print("OnSubFinish2060109")
end

function Quest20601:OnSubFailed2060109(arg1)
    print("OnSubFailed2060109")
end

return Quest20601
