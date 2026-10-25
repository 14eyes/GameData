require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11032 = class("Quest11032", QuestActorProxy)
Quest11032.defaultAlias = "Quest11032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103201"] = self.OnSubStart1103201,
        ["1103202"] = self.OnSubStart1103202,
        ["1103203"] = self.OnSubStart1103203,
        ["1103205"] = self.OnSubStart1103205,
        ["1103204"] = self.OnSubStart1103204
    }
end

function Quest11032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103201"] = self.OnSubFinish1103201,
        ["1103202"] = self.OnSubFinish1103202,
        ["1103203"] = self.OnSubFinish1103203,
        ["1103205"] = self.OnSubFinish1103205,
        ["1103204"] = self.OnSubFinish1103204
    }
end

function Quest11032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103201"] = self.OnSubFailed1103201,
        ["1103202"] = self.OnSubFailed1103202,
        ["1103203"] = self.OnSubFailed1103203,
        ["1103205"] = self.OnSubFailed1103205,
        ["1103204"] = self.OnSubFailed1103204
    }
end

function Quest11032:Start()
    print("Start")
end

function Quest11032:OnDestroy()
    print("OnDestroy")
end

function Quest11032:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.1, 2, 0.5, nil, nil, nil, "")
    self:NotifyTo("Npc2140", 0, true)
    self:NotifyTo("Npc2142", 0, true)
    self:NotifyTo("Npc2143", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc214001Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214201Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214301Data.alias, 3)
    self:NotifyTo("Npc2063", 0, true)
    self:NotifyTo("Npc2147", 0, true)
end

function Quest11032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11032:Clear1()
    print("Clear1")
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 1035)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 1035)
    self:NotifyTo("Npc2029", 0, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11032:Clearfin()
    print("Clearfin")
    self:NotifyTo("Npc2147", 0, true)
    self:NotifyTo("Npc2063", 0, true)
    self:NotifyTo("Npc2140", 0, true)
    self:NotifyTo("Npc2142", 0, true)
    self:NotifyTo("Npc2143", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc214001Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214201Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc214301Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11032:OnSubStart1103201(arg1)
    print("OnSubStart1103201")
    self:NotifyTo("Npc2063", 1, true)
    self:NotifyTo("Npc2147", 1, true)
end

function Quest11032:OnSubFinish1103201(arg1)
    print("OnSubFinish1103201")
end

function Quest11032:OnSubFailed1103201(arg1)
    print("OnSubFailed1103201")
end

function Quest11032:OnSubStart1103202(arg1)
    print("OnSubStart1103202")
    self:CreateQuestNpc(arg1, npcs.Npc202901Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1015Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc1015Data.alias):SitOnChair(8010)
    self:GetQuestNpcActor(npcs.Npc202901Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc202901Data.alias):SitOnChair(8010)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2063", 1, true)
    self:NotifyTo("Npc2147", 1, true)
end

function Quest11032:OnSubFinish1103202(arg1)
    print("OnSubFinish1103202")
end

function Quest11032:OnSubFailed1103202(arg1)
    print("OnSubFailed1103202")
end

function Quest11032:OnSubStart1103203(arg1)
    print("OnSubStart1103203")
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2063", 1, true)
    self:NotifyTo("Npc2147", 1, true)
    self:RequestInteraction("Npc202901")
end

function Quest11032:OnSubFinish1103203(arg1)
    print("OnSubFinish1103203")
    self:ActionSafeCall(self.Clear1)
end

function Quest11032:OnSubFailed1103203(arg1)
    print("OnSubFailed1103203")
end

function Quest11032:OnSubStart1103205(arg1)
    print("OnSubStart1103205")
    self:CreateQuestNpc(arg1, npcs.Npc214001Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc214201Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc214301Data.id, 6)
    self:NotifyTo("Npc2140", 1, true)
    self:NotifyTo("Npc2142", 1, true)
    self:NotifyTo("Npc2143", 1, true)
    self:GetQuestNpcActor(npcs.Npc214001Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214201Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214301Data.alias, mainID)
    self:GetQuestNpcActor(npcs.Npc214001Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc214201Data.alias):DoFreeStyle(1170, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc214301Data.alias):DoFreeStyle(1170, true, nil, true, true)
    self:NotifyTo("Npc2147", 1, true)
    self:NotifyTo("Npc2063", 1, true)
end

function Quest11032:OnSubFinish1103205(arg1)
    print("OnSubFinish1103205")
end

function Quest11032:OnSubFailed1103205(arg1)
    print("OnSubFailed1103205")
end

function Quest11032:OnSubStart1103204(arg1)
    print("OnSubStart1103204")
    self:RequestInteraction(npcs.Npc214001Data.alias)
end

function Quest11032:OnSubFinish1103204(arg1)
    print("OnSubFinish1103204")
    self:ActionSafeCall(self.Clearfin)
end

function Quest11032:OnSubFailed1103204(arg1)
    print("OnSubFailed1103204")
end

return Quest11032
