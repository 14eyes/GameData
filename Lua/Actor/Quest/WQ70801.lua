require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70801 = class("Quest70801", QuestActorProxy)
Quest70801.defaultAlias = "Quest70801"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70801:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70801:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080101"] = self.OnSubStart7080101,
        ["7080102"] = self.OnSubStart7080102,
        ["7080103"] = self.OnSubStart7080103,
        ["7080104"] = self.OnSubStart7080104,
        ["7080105"] = self.OnSubStart7080105,
        ["7080106"] = self.OnSubStart7080106,
        ["7080107"] = self.OnSubStart7080107,
        ["7080108"] = self.OnSubStart7080108,
        ["7080109"] = self.OnSubStart7080109,
        ["7080110"] = self.OnSubStart7080110,
        ["7080111"] = self.OnSubStart7080111,
        ["7080112"] = self.OnSubStart7080112,
        ["7080113"] = self.OnSubStart7080113,
        ["7080114"] = self.OnSubStart7080114,
        ["7080115"] = self.OnSubStart7080115
    }
end

function Quest70801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080101"] = self.OnSubFinish7080101,
        ["7080102"] = self.OnSubFinish7080102,
        ["7080103"] = self.OnSubFinish7080103,
        ["7080104"] = self.OnSubFinish7080104,
        ["7080105"] = self.OnSubFinish7080105,
        ["7080106"] = self.OnSubFinish7080106,
        ["7080107"] = self.OnSubFinish7080107,
        ["7080108"] = self.OnSubFinish7080108,
        ["7080109"] = self.OnSubFinish7080109,
        ["7080110"] = self.OnSubFinish7080110,
        ["7080111"] = self.OnSubFinish7080111,
        ["7080112"] = self.OnSubFinish7080112,
        ["7080113"] = self.OnSubFinish7080113,
        ["7080114"] = self.OnSubFinish7080114,
        ["7080115"] = self.OnSubFinish7080115
    }
end

function Quest70801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7080101"] = self.OnSubFailed7080101,
        ["7080102"] = self.OnSubFailed7080102,
        ["7080103"] = self.OnSubFailed7080103,
        ["7080104"] = self.OnSubFailed7080104,
        ["7080105"] = self.OnSubFailed7080105,
        ["7080106"] = self.OnSubFailed7080106,
        ["7080107"] = self.OnSubFailed7080107,
        ["7080108"] = self.OnSubFailed7080108,
        ["7080109"] = self.OnSubFailed7080109,
        ["7080110"] = self.OnSubFailed7080110,
        ["7080111"] = self.OnSubFailed7080111,
        ["7080112"] = self.OnSubFailed7080112,
        ["7080113"] = self.OnSubFailed7080113,
        ["7080114"] = self.OnSubFailed7080114,
        ["7080115"] = self.OnSubFailed7080115
    }
end

function Quest70801:Start()
    print("Start")
end

function Quest70801:OnDestroy()
    print("OnDestroy")
end

function Quest70801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70801:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
    self:SetQuestVar(subIDs.q7080101, 1, 0)
    self:SetQuestVar(subIDs.q7080101, 2, 0)
    self:SetQuestVar(subIDs.q7080101, 3, 0)
    self:NotifyTo(npcs.Npc1437Data.alias, 0, true)
end

function Quest70801:NewFunction()
    print("NewFunction")
    self:NotifyTo(npcs.Npc1437Data.alias, 0, true)
end

function Quest70801:OnSubStart7080101(arg1)
    print("OnSubStart7080101")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080101(arg1)
    print("OnSubFinish7080101")
    self:NotifyTo(npcs.Npc1437Data.alias, 2, true)
end

function Quest70801:OnSubFailed7080101(arg1)
    print("OnSubFailed7080101")
end

function Quest70801:OnSubStart7080102(arg1)
    print("OnSubStart7080102")
    self:SetQuestVar(subIDs.q7080101, 1, 0)
    self:SetQuestVar(subIDs.q7080101, 2, 0)
    self:SetQuestVar(subIDs.q7080101, 3, 0)
    self:NotifyTo(npcs.Npc1437Data.alias, 2, true)
end

function Quest70801:OnSubFinish7080102(arg1)
    print("OnSubFinish7080102")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest70801:OnSubFailed7080102(arg1)
    print("OnSubFailed7080102")
    self:SetQuestVar(subIDs.q7080101, 1, 0)
    self:SetQuestVar(subIDs.q7080101, 2, 0)
    self:SetQuestVar(subIDs.q7080101, 3, 0)
end

function Quest70801:OnSubStart7080103(arg1)
    print("OnSubStart7080103")
end

function Quest70801:OnSubFinish7080103(arg1)
    print("OnSubFinish7080103")
    self:SetQuestVar(subIDs.q7080101, 1, 1)
end

function Quest70801:OnSubFailed7080103(arg1)
    print("OnSubFailed7080103")
    self:SetQuestVar(subIDs.q7080101, 1, 2)
end

function Quest70801:OnSubStart7080104(arg1)
    print("OnSubStart7080104")
end

function Quest70801:OnSubFinish7080104(arg1)
    print("OnSubFinish7080104")
    self:SetQuestVar(subIDs.q7080101, 2, 1)
end

function Quest70801:OnSubFailed7080104(arg1)
    print("OnSubFailed7080104")
    self:SetQuestVar(subIDs.q7080101, 2, 2)
end

function Quest70801:OnSubStart7080105(arg1)
    print("OnSubStart7080105")
end

function Quest70801:OnSubFinish7080105(arg1)
    print("OnSubFinish7080105")
    self:SetQuestVar(subIDs.q7080101, 3, 1)
end

function Quest70801:OnSubFailed7080105(arg1)
    print("OnSubFailed7080105")
    self:SetQuestVar(subIDs.q7080101, 3, 2)
end

function Quest70801:OnSubStart7080106(arg1)
    print("OnSubStart7080106")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080106(arg1)
    print("OnSubFinish7080106")
end

function Quest70801:OnSubFailed7080106(arg1)
    print("OnSubFailed7080106")
end

function Quest70801:OnSubStart7080107(arg1)
    print("OnSubStart7080107")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080107(arg1)
    print("OnSubFinish7080107")
end

function Quest70801:OnSubFailed7080107(arg1)
    print("OnSubFailed7080107")
end

function Quest70801:OnSubStart7080108(arg1)
    print("OnSubStart7080108")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080108(arg1)
    print("OnSubFinish7080108")
end

function Quest70801:OnSubFailed7080108(arg1)
    print("OnSubFailed7080108")
end

function Quest70801:OnSubStart7080109(arg1)
    print("OnSubStart7080109")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080109(arg1)
    print("OnSubFinish7080109")
end

function Quest70801:OnSubFailed7080109(arg1)
    print("OnSubFailed7080109")
end

function Quest70801:OnSubStart7080110(arg1)
    print("OnSubStart7080110")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080110(arg1)
    print("OnSubFinish7080110")
end

function Quest70801:OnSubFailed7080110(arg1)
    print("OnSubFailed7080110")
end

function Quest70801:OnSubStart7080111(arg1)
    print("OnSubStart7080111")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080111(arg1)
    print("OnSubFinish7080111")
end

function Quest70801:OnSubFailed7080111(arg1)
    print("OnSubFailed7080111")
end

function Quest70801:OnSubStart7080112(arg1)
    print("OnSubStart7080112")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080112(arg1)
    print("OnSubFinish7080112")
end

function Quest70801:OnSubFailed7080112(arg1)
    print("OnSubFailed7080112")
end

function Quest70801:OnSubStart7080113(arg1)
    print("OnSubStart7080113")
    self:GetQuestVar(subIDs.q7080101, 1)
    self:GetQuestVar(subIDs.q7080101, 2)
    self:GetQuestVar(subIDs.q7080101, 3)
end

function Quest70801:OnSubFinish7080113(arg1)
    print("OnSubFinish7080113")
end

function Quest70801:OnSubFailed7080113(arg1)
    print("OnSubFailed7080113")
end

function Quest70801:OnSubStart7080114(arg1)
    print("OnSubStart7080114")
end

function Quest70801:OnSubFinish7080114(arg1)
    print("OnSubFinish7080114")
end

function Quest70801:OnSubFailed7080114(arg1)
    print("OnSubFailed7080114")
end

function Quest70801:OnSubStart7080115(arg1)
    print("OnSubStart7080115")
end

function Quest70801:OnSubFinish7080115(arg1)
    print("OnSubFinish7080115")
end

function Quest70801:OnSubFailed7080115(arg1)
    print("OnSubFailed7080115")
end

return Quest70801
