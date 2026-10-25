require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20702 = class("Quest20702", QuestActorProxy)
Quest20702.defaultAlias = "Quest20702"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20702:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20702:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2070201"] = self.OnSubStart2070201,
        ["2070202"] = self.OnSubStart2070202,
        ["2070203"] = self.OnSubStart2070203,
        ["2070204"] = self.OnSubStart2070204,
        ["2070205"] = self.OnSubStart2070205,
        ["2070206"] = self.OnSubStart2070206,
        ["2070207"] = self.OnSubStart2070207,
        ["2070208"] = self.OnSubStart2070208,
        ["2070209"] = self.OnSubStart2070209,
        ["2070210"] = self.OnSubStart2070210,
        ["2070211"] = self.OnSubStart2070211,
        ["2070212"] = self.OnSubStart2070212,
        ["2070213"] = self.OnSubStart2070213,
        ["2070214"] = self.OnSubStart2070214
    }
end

function Quest20702:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2070201"] = self.OnSubFinish2070201,
        ["2070202"] = self.OnSubFinish2070202,
        ["2070203"] = self.OnSubFinish2070203,
        ["2070204"] = self.OnSubFinish2070204,
        ["2070205"] = self.OnSubFinish2070205,
        ["2070206"] = self.OnSubFinish2070206,
        ["2070207"] = self.OnSubFinish2070207,
        ["2070208"] = self.OnSubFinish2070208,
        ["2070209"] = self.OnSubFinish2070209,
        ["2070210"] = self.OnSubFinish2070210,
        ["2070211"] = self.OnSubFinish2070211,
        ["2070212"] = self.OnSubFinish2070212,
        ["2070213"] = self.OnSubFinish2070213,
        ["2070214"] = self.OnSubFinish2070214
    }
end

function Quest20702:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2070201"] = self.OnSubFailed2070201,
        ["2070202"] = self.OnSubFailed2070202,
        ["2070203"] = self.OnSubFailed2070203,
        ["2070204"] = self.OnSubFailed2070204,
        ["2070205"] = self.OnSubFailed2070205,
        ["2070206"] = self.OnSubFailed2070206,
        ["2070207"] = self.OnSubFailed2070207,
        ["2070208"] = self.OnSubFailed2070208,
        ["2070209"] = self.OnSubFailed2070209,
        ["2070210"] = self.OnSubFailed2070210,
        ["2070211"] = self.OnSubFailed2070211,
        ["2070212"] = self.OnSubFailed2070212,
        ["2070213"] = self.OnSubFailed2070213,
        ["2070214"] = self.OnSubFailed2070214
    }
end

function Quest20702:Start()
    print("Start")
end

function Quest20702:OnDestroy()
    print("OnDestroy")
end

function Quest20702:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, nil, nil, "")
    self:DestroyQuestNpcActor(npcs.Npc1437Data.alias, 0)
end

function Quest20702:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20702:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SetQuestVar(subIDs.q2070201, 1, 0)
    self:SetQuestVar(subIDs.q2070201, 2, 0)
    self:SetQuestVar(subIDs.q2070201, 3, 0)
    self:DestroyQuestNpcActor(npcs.Npc1437Data.alias, 3)
end

function Quest20702:OnSubStart2070201(arg1)
    print("OnSubStart2070201")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1437Data.id, 0)
end

function Quest20702:OnSubFinish2070201(arg1)
    print("OnSubFinish2070201")
end

function Quest20702:OnSubFailed2070201(arg1)
    print("OnSubFailed2070201")
end

function Quest20702:OnSubStart2070202(arg1)
    print("OnSubStart2070202")
    self:SetQuestVar(subIDs.q2070201, 1, 0)
    self:SetQuestVar(subIDs.q2070201, 2, 0)
    self:SetQuestVar(subIDs.q2070201, 3, 0)
end

function Quest20702:OnSubFinish2070202(arg1)
    print("OnSubFinish2070202")
end

function Quest20702:OnSubFailed2070202(arg1)
    print("OnSubFailed2070202")
end

function Quest20702:OnSubStart2070203(arg1)
    print("OnSubStart2070203")
end

function Quest20702:OnSubFinish2070203(arg1)
    print("OnSubFinish2070203")
    self:SetQuestVar(subIDs.q2070201, 1, 1)
end

function Quest20702:OnSubFailed2070203(arg1)
    print("OnSubFailed2070203")
    self:SetQuestVar(subIDs.q2070201, 1, 2)
end

function Quest20702:OnSubStart2070204(arg1)
    print("OnSubStart2070204")
end

function Quest20702:OnSubFinish2070204(arg1)
    print("OnSubFinish2070204")
    self:SetQuestVar(subIDs.q2070201, 2, 1)
end

function Quest20702:OnSubFailed2070204(arg1)
    print("OnSubFailed2070204")
    self:SetQuestVar(subIDs.q2070201, 2, 2)
end

function Quest20702:OnSubStart2070205(arg1)
    print("OnSubStart2070205")
end

function Quest20702:OnSubFinish2070205(arg1)
    print("OnSubFinish2070205")
    self:SetQuestVar(subIDs.q2070201, 3, 1)
end

function Quest20702:OnSubFailed2070205(arg1)
    print("OnSubFailed2070205")
    self:SetQuestVar(subIDs.q2070201, 3, 2)
end

function Quest20702:OnSubStart2070206(arg1)
    print("OnSubStart2070206")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070206(arg1)
    print("OnSubFinish2070206")
end

function Quest20702:OnSubFailed2070206(arg1)
    print("OnSubFailed2070206")
end

function Quest20702:OnSubStart2070207(arg1)
    print("OnSubStart2070207")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070207(arg1)
    print("OnSubFinish2070207")
end

function Quest20702:OnSubFailed2070207(arg1)
    print("OnSubFailed2070207")
end

function Quest20702:OnSubStart2070208(arg1)
    print("OnSubStart2070208")
    self:GetQuestVar(subIDs.q2070201, 3)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 1)
end

function Quest20702:OnSubFinish2070208(arg1)
    print("OnSubFinish2070208")
end

function Quest20702:OnSubFailed2070208(arg1)
    print("OnSubFailed2070208")
end

function Quest20702:OnSubStart2070209(arg1)
    print("OnSubStart2070209")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070209(arg1)
    print("OnSubFinish2070209")
end

function Quest20702:OnSubFailed2070209(arg1)
    print("OnSubFailed2070209")
end

function Quest20702:OnSubStart2070210(arg1)
    print("OnSubStart2070210")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070210(arg1)
    print("OnSubFinish2070210")
end

function Quest20702:OnSubFailed2070210(arg1)
    print("OnSubFailed2070210")
end

function Quest20702:OnSubStart2070211(arg1)
    print("OnSubStart2070211")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070211(arg1)
    print("OnSubFinish2070211")
end

function Quest20702:OnSubFailed2070211(arg1)
    print("OnSubFailed2070211")
end

function Quest20702:OnSubStart2070212(arg1)
    print("OnSubStart2070212")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070212(arg1)
    print("OnSubFinish2070212")
end

function Quest20702:OnSubFailed2070212(arg1)
    print("OnSubFailed2070212")
end

function Quest20702:OnSubStart2070213(arg1)
    print("OnSubStart2070213")
    self:GetQuestVar(subIDs.q2070201, 1)
    self:GetQuestVar(subIDs.q2070201, 2)
    self:GetQuestVar(subIDs.q2070201, 3)
end

function Quest20702:OnSubFinish2070213(arg1)
    print("OnSubFinish2070213")
end

function Quest20702:OnSubFailed2070213(arg1)
    print("OnSubFailed2070213")
end

function Quest20702:OnSubStart2070214(arg1)
    print("OnSubStart2070214")
end

function Quest20702:OnSubFinish2070214(arg1)
    print("OnSubFinish2070214")
end

function Quest20702:OnSubFailed2070214(arg1)
    print("OnSubFailed2070214")
end

return Quest20702
