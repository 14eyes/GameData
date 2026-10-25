require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11031 = class("Quest11031", QuestActorProxy)
Quest11031.defaultAlias = "Quest11031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103101"] = self.OnSubStart1103101,
        ["1103102"] = self.OnSubStart1103102,
        ["1103103"] = self.OnSubStart1103103,
        ["1103104"] = self.OnSubStart1103104,
        ["1103105"] = self.OnSubStart1103105,
        ["1103106"] = self.OnSubStart1103106,
        ["1103107"] = self.OnSubStart1103107,
        ["1103112"] = self.OnSubStart1103112,
        ["1103108"] = self.OnSubStart1103108,
        ["1103109"] = self.OnSubStart1103109,
        ["1103110"] = self.OnSubStart1103110,
        ["1103111"] = self.OnSubStart1103111,
        ["1103113"] = self.OnSubStart1103113,
        ["1103114"] = self.OnSubStart1103114,
        ["1103115"] = self.OnSubStart1103115
    }
end

function Quest11031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103101"] = self.OnSubFinish1103101,
        ["1103102"] = self.OnSubFinish1103102,
        ["1103103"] = self.OnSubFinish1103103,
        ["1103104"] = self.OnSubFinish1103104,
        ["1103105"] = self.OnSubFinish1103105,
        ["1103106"] = self.OnSubFinish1103106,
        ["1103107"] = self.OnSubFinish1103107,
        ["1103112"] = self.OnSubFinish1103112,
        ["1103108"] = self.OnSubFinish1103108,
        ["1103109"] = self.OnSubFinish1103109,
        ["1103110"] = self.OnSubFinish1103110,
        ["1103111"] = self.OnSubFinish1103111,
        ["1103113"] = self.OnSubFinish1103113,
        ["1103114"] = self.OnSubFinish1103114,
        ["1103115"] = self.OnSubFinish1103115
    }
end

function Quest11031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103101"] = self.OnSubFailed1103101,
        ["1103102"] = self.OnSubFailed1103102,
        ["1103103"] = self.OnSubFailed1103103,
        ["1103104"] = self.OnSubFailed1103104,
        ["1103105"] = self.OnSubFailed1103105,
        ["1103106"] = self.OnSubFailed1103106,
        ["1103107"] = self.OnSubFailed1103107,
        ["1103112"] = self.OnSubFailed1103112,
        ["1103108"] = self.OnSubFailed1103108,
        ["1103109"] = self.OnSubFailed1103109,
        ["1103110"] = self.OnSubFailed1103110,
        ["1103111"] = self.OnSubFailed1103111,
        ["1103113"] = self.OnSubFailed1103113,
        ["1103114"] = self.OnSubFailed1103114,
        ["1103115"] = self.OnSubFailed1103115
    }
end

function Quest11031:Start()
    print("Start")
end

function Quest11031:OnDestroy()
    print("OnDestroy")
end

function Quest11031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11031:NormalBlack()
    print("NormalBlack")
    self:ShowBlackScreen(0.2, 1.5, 0.5, nil, nil, nil, "")
end

function Quest11031:ClearHuixin()
    print("ClearHuixin")
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 3)
end

function Quest11031:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1103112)
        end

        print("Talk1103105:Finishi Quest 1103112")
    end
end

function Quest11031:ClearHuixinTianshu()
    print("ClearHuixinTianshu")
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc200302Data.alias, 3)
end

function Quest11031:ClearGanyuPaimon()
    print("ClearGanyuPaimon")
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonDataStart.alias):DestroyWithDisappear(false)
end

function Quest11031:ClearHuixinmeet1()
    print("ClearHuixinmeet1")
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonDataStart.alias):DestroyWithDisappear(false)
end

function Quest11031:Clearbolaimeet()
    print("Clearbolaimeet")
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc201301Data.alias, 3)
    self:NotifyTo("Npc2013", 0, true)
    self:GetQuestNpcActor(npcs.PaimonDataStart.alias):DestroyWithDisappear(false)
end

function Quest11031:Clearyurenzhongmeet()
    print("Clearyurenzhongmeet")
    self:DestroyQuestNpcActor(npcs.Npc10324Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonDataStart.alias):DestroyWithDisappear(false)
end

function Quest11031:Cleardongshengmeet()
    print("Cleardongshengmeet")
    self:NotifyTo("Npc2454", 0, true)
    self:NotifyTo("Npc2029", 0, true)
    self:NotifyTo("Npc2003", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc200302Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1015Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc202901Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonDataStart.alias):DestroyWithDisappear(false)
    self:NotifyTo("2047", 0, true)
end

function Quest11031:OnSubStart1103101(arg1)
    print("OnSubStart1103101")
end

function Quest11031:OnSubFinish1103101(arg1)
    print("OnSubFinish1103101")
end

function Quest11031:OnSubFailed1103101(arg1)
    print("OnSubFailed1103101")
end

function Quest11031:OnSubStart1103102(arg1)
    print("OnSubStart1103102")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1015Data.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 1)
        self:RequestInteraction(npcs.Npc1015Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11031:OnSubFinish1103102(arg1)
    print("OnSubFinish1103102")
    self:ActionSafeCall(self.ClearGanyuPaimon)
end

function Quest11031:OnSubFailed1103102(arg1)
    print("OnSubFailed1103102")
end

function Quest11031:OnSubStart1103103(arg1)
    print("OnSubStart1103103")
end

function Quest11031:OnSubFinish1103103(arg1)
    print("OnSubFinish1103103")
end

function Quest11031:OnSubFailed1103103(arg1)
    print("OnSubFailed1103103")
end

function Quest11031:OnSubStart1103104(arg1)
    print("OnSubStart1103104")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc1015Data2.alias})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:NotifyTo("Npc2003", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc1015Data2.id, 9)
        self:RequestInteraction(npcs.Npc1015Data2.alias)
    end, nil, questNpcCreateTask)
end

function Quest11031:OnSubFinish1103104(arg1)
    print("OnSubFinish1103104")
    self:ActionSafeCall(self.ClearGanyuPaimon)
end

function Quest11031:OnSubFailed1103104(arg1)
    print("OnSubFailed1103104")
end

function Quest11031:OnSubStart1103105(arg1)
    print("OnSubStart1103105")
    self:NotifyTo("Npc2029", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc202901Data.id, 4)
    self:NotifyTo("Npc2003", 1, true)
end

function Quest11031:OnSubFinish1103105(arg1)
    print("OnSubFinish1103105")
    self:ActionSafeCall(self.ClearHuixinmeet1)
end

function Quest11031:OnSubFailed1103105(arg1)
    print("OnSubFailed1103105")
end

function Quest11031:OnSubStart1103106(arg1)
    print("OnSubStart1103106")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc2003", 1, true)
        arg1_2:NotifyTo("Npc2029", 1, true)
        arg1_2:NotifyTo("Npc2013", 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc201301Data.id, 5)
    end)
end

function Quest11031:OnSubFinish1103106(arg1)
    print("OnSubFinish1103106")
    self:ActionSafeCall(self.Clearbolaimeet)
end

function Quest11031:OnSubFailed1103106(arg1)
    print("OnSubFailed1103106")
end

function Quest11031:OnSubStart1103107(arg1)
    print("OnSubStart1103107")
    self:NotifyTo("Npc2310", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc231002Data.id, 6)
    self:NotifyTo("Npc2003", 1, true)
end

function Quest11031:OnSubFinish1103107(arg1)
    print("OnSubFinish1103107")
    self:ActionSafeCall(self.ClearGanyuPaimon)
end

function Quest11031:OnSubFailed1103107(arg1)
    print("OnSubFailed1103107")
end

function Quest11031:OnSubStart1103112(arg1)
    print("OnSubStart1103112")
    self:NotifyTo("Npc2310", 1, true)
    self:NotifyTo("Npc2003", 1, true)
end

function Quest11031:OnSubFinish1103112(arg1)
    print("OnSubFinish1103112")
end

function Quest11031:OnSubFailed1103112(arg1)
    print("OnSubFailed1103112")
end

function Quest11031:OnSubStart1103108(arg1)
    print("OnSubStart1103108")
    self:NotifyTo("Npc2310", 1, true)
    self:NotifyTo("Npc2003", 1, true)
end

function Quest11031:OnSubFinish1103108(arg1)
    print("OnSubFinish1103108")
end

function Quest11031:OnSubFailed1103108(arg1)
    print("OnSubFailed1103108")
end

function Quest11031:OnSubStart1103109(arg1)
    print("OnSubStart1103109")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10324Data.alias})
    self.ShowBlackScreen(self, 0.2, 2.5, 0.5, function()
        self:NotifyTo("Npc2310", 1, true)
        self:NotifyTo("Npc2003", 1, true)
        self:CreateQuestNpc(arg1, npcs.Npc10324Data.id, 2)
        self:RequestInteraction(npcs.Npc10324Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest11031:OnSubFinish1103109(arg1)
    print("OnSubFinish1103109")
    self:ActionSafeCall(self.Clearyurenzhongmeet)
end

function Quest11031:OnSubFailed1103109(arg1)
    print("OnSubFailed1103109")
end

function Quest11031:OnSubStart1103110(arg1)
    print("OnSubStart1103110")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2310", 1, true)
end

function Quest11031:OnSubFinish1103110(arg1)
    print("OnSubFinish1103110")
    self:DestroyQuestNpcActor(npcs.Npc231002Data.alias, 3)
    self:NotifyTo("Npc2310", 0, true)
end

function Quest11031:OnSubFailed1103110(arg1)
    print("OnSubFailed1103110")
end

function Quest11031:OnSubStart1103111(arg1)
    print("OnSubStart1103111")
    self:NotifyTo("Npc2003", 1, true)
end

function Quest11031:OnSubFinish1103111(arg1)
    print("OnSubFinish1103111")
end

function Quest11031:OnSubFailed1103111(arg1)
    print("OnSubFailed1103111")
end

function Quest11031:OnSubStart1103113(arg1)
    print("OnSubStart1103113")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc202901Data.id, 4)
end

function Quest11031:OnSubFinish1103113(arg1)
    print("OnSubFinish1103113")
    self:ActionSafeCall(self.ClearHuixinmeet1)
end

function Quest11031:OnSubFailed1103113(arg1)
    print("OnSubFailed1103113")
end

function Quest11031:OnSubStart1103114(arg1)
    print("OnSubStart1103114")
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2454", 2, true)
    self:NotifyTo("2047", 1, true)
end

function Quest11031:OnSubFinish1103114(arg1)
    print("OnSubFinish1103114")
    self:ActionSafeCall(self.Cleardongshengmeet)
end

function Quest11031:OnSubFailed1103114(arg1)
    print("OnSubFailed1103114")
end

function Quest11031:OnSubStart1103115(arg1)
    print("OnSubStart1103115")
end

function Quest11031:OnSubFinish1103115(arg1)
    print("OnSubFinish1103115")
end

function Quest11031:OnSubFailed1103115(arg1)
    print("OnSubFailed1103115")
end

return Quest11031
