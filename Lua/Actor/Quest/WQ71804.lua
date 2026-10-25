require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71804 = class("Quest71804", QuestActorProxy)
Quest71804.defaultAlias = "Quest71804"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71804:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71804:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180401"] = self.OnSubStart7180401,
        ["7180402"] = self.OnSubStart7180402,
        ["7180403"] = self.OnSubStart7180403,
        ["7180404"] = self.OnSubStart7180404,
        ["7180447"] = self.OnSubStart7180447,
        ["7180444"] = self.OnSubStart7180444,
        ["7180434"] = self.OnSubStart7180434,
        ["7180405"] = self.OnSubStart7180405,
        ["7180445"] = self.OnSubStart7180445,
        ["7180435"] = self.OnSubStart7180435,
        ["7180446"] = self.OnSubStart7180446,
        ["7180448"] = self.OnSubStart7180448,
        ["7180406"] = self.OnSubStart7180406,
        ["7180436"] = self.OnSubStart7180436,
        ["7180407"] = self.OnSubStart7180407
    }
end

function Quest71804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180401"] = self.OnSubFinish7180401,
        ["7180402"] = self.OnSubFinish7180402,
        ["7180403"] = self.OnSubFinish7180403,
        ["7180404"] = self.OnSubFinish7180404,
        ["7180447"] = self.OnSubFinish7180447,
        ["7180444"] = self.OnSubFinish7180444,
        ["7180434"] = self.OnSubFinish7180434,
        ["7180405"] = self.OnSubFinish7180405,
        ["7180445"] = self.OnSubFinish7180445,
        ["7180435"] = self.OnSubFinish7180435,
        ["7180446"] = self.OnSubFinish7180446,
        ["7180448"] = self.OnSubFinish7180448,
        ["7180406"] = self.OnSubFinish7180406,
        ["7180436"] = self.OnSubFinish7180436,
        ["7180407"] = self.OnSubFinish7180407
    }
end

function Quest71804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180401"] = self.OnSubFailed7180401,
        ["7180402"] = self.OnSubFailed7180402,
        ["7180403"] = self.OnSubFailed7180403,
        ["7180404"] = self.OnSubFailed7180404,
        ["7180447"] = self.OnSubFailed7180447,
        ["7180444"] = self.OnSubFailed7180444,
        ["7180434"] = self.OnSubFailed7180434,
        ["7180405"] = self.OnSubFailed7180405,
        ["7180445"] = self.OnSubFailed7180445,
        ["7180435"] = self.OnSubFailed7180435,
        ["7180446"] = self.OnSubFailed7180446,
        ["7180448"] = self.OnSubFailed7180448,
        ["7180406"] = self.OnSubFailed7180406,
        ["7180436"] = self.OnSubFailed7180436,
        ["7180407"] = self.OnSubFailed7180407
    }
end

function Quest71804:Start()
    print("Start")
end

function Quest71804:OnDestroy()
    print("OnDestroy")
end

function Quest71804:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71804:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71804:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71804:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk7180402:Finishi Clear Paimon1")
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear()
        end
    end

    if arg1 == 2 then
        print("Talk7180402:Finishi Clear Paimon2")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
            actor:FinishQuestID(false, 7180402)
            questNpcActor:DestroyWithDisappear()
        end
    end
end

function Quest71804:OnSubStart7180401(arg1)
    print("OnSubStart7180401")
end

function Quest71804:OnSubFinish7180401(arg1)
    print("OnSubFinish7180401")
end

function Quest71804:OnSubFailed7180401(arg1)
    print("OnSubFailed7180401")
end

function Quest71804:OnSubStart7180402(arg1)
    print("OnSubStart7180402")
end

function Quest71804:OnSubFinish7180402(arg1)
    print("OnSubFinish7180402")
end

function Quest71804:OnSubFailed7180402(arg1)
    print("OnSubFailed7180402")
end

function Quest71804:OnSubStart7180403(arg1)
    print("OnSubStart7180403")
end

function Quest71804:OnSubFinish7180403(arg1)
    print("OnSubFinish7180403")
end

function Quest71804:OnSubFailed7180403(arg1)
    print("OnSubFailed7180403")
end

function Quest71804:OnSubStart7180404(arg1)
    print("OnSubStart7180404")
end

function Quest71804:OnSubFinish7180404(arg1)
    print("OnSubFinish7180404")
    self:RequestInteractionForceAlias(npcs.Npc2012Data.alias)
end

function Quest71804:OnSubFailed7180404(arg1)
    print("OnSubFailed7180404")
end

function Quest71804:OnSubStart7180447(arg1)
    print("OnSubStart7180447")
end

function Quest71804:OnSubFinish7180447(arg1)
    print("OnSubFinish7180447")
end

function Quest71804:OnSubFailed7180447(arg1)
    print("OnSubFailed7180447")
end

function Quest71804:OnSubStart7180444(arg1)
    print("OnSubStart7180444")
end

function Quest71804:OnSubFinish7180444(arg1)
    print("OnSubFinish7180444")
end

function Quest71804:OnSubFailed7180444(arg1)
    print("OnSubFailed7180444")
end

function Quest71804:OnSubStart7180434(arg1)
    print("OnSubStart7180434")
end

function Quest71804:OnSubFinish7180434(arg1)
    print("OnSubFinish7180434")
end

function Quest71804:OnSubFailed7180434(arg1)
    print("OnSubFailed7180434")
end

function Quest71804:OnSubStart7180405(arg1)
    print("OnSubStart7180405")
end

function Quest71804:OnSubFinish7180405(arg1)
    print("OnSubFinish7180405")
    self:RequestInteractionForceAlias(npcs.Npc2056Data.alias)
end

function Quest71804:OnSubFailed7180405(arg1)
    print("OnSubFailed7180405")
end

function Quest71804:OnSubStart7180445(arg1)
    print("OnSubStart7180445")
end

function Quest71804:OnSubFinish7180445(arg1)
    print("OnSubFinish7180445")
end

function Quest71804:OnSubFailed7180445(arg1)
    print("OnSubFailed7180445")
end

function Quest71804:OnSubStart7180435(arg1)
    print("OnSubStart7180435")
end

function Quest71804:OnSubFinish7180435(arg1)
    print("OnSubFinish7180435")
end

function Quest71804:OnSubFailed7180435(arg1)
    print("OnSubFailed7180435")
end

function Quest71804:OnSubStart7180446(arg1)
    print("OnSubStart7180446")
    self:SetQuestVarByMainId(1, 1)
end

function Quest71804:OnSubFinish7180446(arg1)
    print("OnSubFinish7180446")
end

function Quest71804:OnSubFailed7180446(arg1)
    print("OnSubFailed7180446")
end

function Quest71804:OnSubStart7180448(arg1)
    print("OnSubStart7180448")
    self:SetQuestVarByMainId(1, 2)
end

function Quest71804:OnSubFinish7180448(arg1)
    print("OnSubFinish7180448")
end

function Quest71804:OnSubFailed7180448(arg1)
    print("OnSubFailed7180448")
end

function Quest71804:OnSubStart7180406(arg1)
    print("OnSubStart7180406")
    self:NotifyTo(npcs.Npc2085Data.alias, 2, true)
end

function Quest71804:OnSubFinish7180406(arg1)
    print("OnSubFinish7180406")
    self:RequestInteractionForceAlias(npcs.Npc2085Data.alias)
end

function Quest71804:OnSubFailed7180406(arg1)
    print("OnSubFailed7180406")
end

function Quest71804:OnSubStart7180436(arg1)
    print("OnSubStart7180436")
    self:NotifyTo(npcs.Npc2085Data.alias, 2, true)
end

function Quest71804:OnSubFinish7180436(arg1)
    print("OnSubFinish7180436")
end

function Quest71804:OnSubFailed7180436(arg1)
    print("OnSubFailed7180436")
end

function Quest71804:OnSubStart7180407(arg1)
    print("OnSubStart7180407")
    self:NotifyTo(npcs.Npc2085Data.alias, 2, true)
end

function Quest71804:OnSubFinish7180407(arg1)
    print("OnSubFinish7180407")
    self:NotifyTo(npcs.Npc2085Data.alias, 0, true)
end

function Quest71804:OnSubFailed7180407(arg1)
    print("OnSubFailed7180407")
end

return Quest71804
