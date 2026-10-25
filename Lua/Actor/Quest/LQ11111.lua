require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11111 = class("Quest11111", QuestActorProxy)
Quest11111.defaultAlias = "Quest11111"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11111:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1111101"] = self.OnSubStart1111101,
        ["1111102"] = self.OnSubStart1111102,
        ["1111104"] = self.OnSubStart1111104,
        ["1111105"] = self.OnSubStart1111105
    }
end

function Quest11111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1111101"] = self.OnSubFinish1111101,
        ["1111102"] = self.OnSubFinish1111102,
        ["1111104"] = self.OnSubFinish1111104,
        ["1111105"] = self.OnSubFinish1111105
    }
end

function Quest11111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1111101"] = self.OnSubFailed1111101,
        ["1111102"] = self.OnSubFailed1111102,
        ["1111104"] = self.OnSubFailed1111104,
        ["1111105"] = self.OnSubFailed1111105
    }
end

function Quest11111:Start()
    print("Start")
end

function Quest11111:OnDestroy()
    print("OnDestroy")
end

function Quest11111:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
end

function Quest11111:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11111:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11111:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc10345Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10344Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10365Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10366Data.alias, 3)
end

function Quest11111:OnSubStart1111101(arg1)
    print("OnSubStart1111101")
    self:CreateQuestNpc(arg1, npcs.Npc10343Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10348Data.id, 2)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
end

function Quest11111:OnSubFinish1111101(arg1)
    print("OnSubFinish1111101")
    self:SafeDestroyQuestNpc(npcs.Npc10348Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11111:OnSubFailed1111101(arg1)
    print("OnSubFailed1111101")
end

function Quest11111:OnSubStart1111102(arg1)
    print("OnSubStart1111102")
    self:CreateQuestNpc(arg1, npcs.Npc10345Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10365Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10366Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10343Data1.id, 4)
    self:NotifyTo(npcs.Npc2084Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q11111Trigger_.alias, datas.Q11111Trigger_.script, datas.Q11111Trigger_.id, 0, datas.Q11111Trigger_.point.pos, datas.Q11111Trigger_.point.rot, true, false, 3)
end

function Quest11111:OnSubFinish1111102(arg1)
    print("OnSubFinish1111102")
    self:SafeDestroyQuestNpc(npcs.Npc10345Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10365Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10366Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data1.alias, 3)
    self:NotifyTo(npcs.Npc2084Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest11111:OnSubFailed1111102(arg1)
    print("OnSubFailed1111102")
end

function Quest11111:OnSubStart1111104(arg1)
    print("OnSubStart1111104")
end

function Quest11111:OnSubFinish1111104(arg1)
    print("OnSubFinish1111104")
end

function Quest11111:OnSubFailed1111104(arg1)
    print("OnSubFailed1111104")
end

function Quest11111:OnSubStart1111105(arg1)
    print("OnSubStart1111105")
    self.CallDelay(self, 2, function()
        self:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 1)
        self:RequestInteraction(npcs.Npc1021Data.alias)
    end)
end

function Quest11111:OnSubFinish1111105(arg1)
    print("OnSubFinish1111105")
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc10345Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10344Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10343Data.alias, 3)
end

function Quest11111:OnSubFailed1111105(arg1)
    print("OnSubFailed1111105")
end

return Quest11111
