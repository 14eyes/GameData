require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22116 = class("Quest22116", QuestActorProxy)
Quest22116.defaultAlias = "Quest22116"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22116:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211601"] = self.OnSubStart2211601,
        ["2211602"] = self.OnSubStart2211602,
        ["2211603"] = self.OnSubStart2211603,
        ["2211604"] = self.OnSubStart2211604,
        ["2211605"] = self.OnSubStart2211605,
        ["2211606"] = self.OnSubStart2211606,
        ["2211609"] = self.OnSubStart2211609,
        ["2211610"] = self.OnSubStart2211610,
        ["2211611"] = self.OnSubStart2211611,
        ["2211613"] = self.OnSubStart2211613,
        ["2211607"] = self.OnSubStart2211607,
        ["2211612"] = self.OnSubStart2211612,
        ["2211614"] = self.OnSubStart2211614,
        ["2211608"] = self.OnSubStart2211608,
        ["2211615"] = self.OnSubStart2211615
    }
end

function Quest22116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211601"] = self.OnSubFinish2211601,
        ["2211602"] = self.OnSubFinish2211602,
        ["2211603"] = self.OnSubFinish2211603,
        ["2211604"] = self.OnSubFinish2211604,
        ["2211605"] = self.OnSubFinish2211605,
        ["2211606"] = self.OnSubFinish2211606,
        ["2211609"] = self.OnSubFinish2211609,
        ["2211610"] = self.OnSubFinish2211610,
        ["2211611"] = self.OnSubFinish2211611,
        ["2211613"] = self.OnSubFinish2211613,
        ["2211607"] = self.OnSubFinish2211607,
        ["2211612"] = self.OnSubFinish2211612,
        ["2211614"] = self.OnSubFinish2211614,
        ["2211608"] = self.OnSubFinish2211608,
        ["2211615"] = self.OnSubFinish2211615
    }
end

function Quest22116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211601"] = self.OnSubFailed2211601,
        ["2211602"] = self.OnSubFailed2211602,
        ["2211603"] = self.OnSubFailed2211603,
        ["2211604"] = self.OnSubFailed2211604,
        ["2211605"] = self.OnSubFailed2211605,
        ["2211606"] = self.OnSubFailed2211606,
        ["2211609"] = self.OnSubFailed2211609,
        ["2211610"] = self.OnSubFailed2211610,
        ["2211611"] = self.OnSubFailed2211611,
        ["2211613"] = self.OnSubFailed2211613,
        ["2211607"] = self.OnSubFailed2211607,
        ["2211612"] = self.OnSubFailed2211612,
        ["2211614"] = self.OnSubFailed2211614,
        ["2211608"] = self.OnSubFailed2211608,
        ["2211615"] = self.OnSubFailed2211615
    }
end

function Quest22116:Start()
    print("Start")
end

function Quest22116:OnDestroy()
    print("OnDestroy")
end

function Quest22116:OnMainFinished(arg1)
    print("OnMainFinished")
    self:DestroyQuestNpcActor(npcs.Npc203701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc207601Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2001Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2015Data.alias, 0)
    self:LightNotifyTo(npcs.Npc1624Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2076Data.alias, 0, true)
end

function Quest22116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22116:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc203701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc207601Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2031Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2074Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2030Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2001Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2015Data.alias, 0)
    self:LightNotifyTo(npcs.Npc1624Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2076Data.alias, 0, true)
end

function Quest22116:DestroyChang()
    print("DestroyChang")
    self:DestroyQuestNpcActor(npcs.Npc162401Data.alias, 3)
end

function Quest22116:HideChang()
    print("HideChang")
    self:NotifyTo(npcs.Npc1624Data.alias, 1, true)
end

function Quest22116:ZhihuaReminder()
    print("ZhihuaReminder")
    self:NarratorOnlyTask(datas.ZhihuaPaimonReminder)
end

function Quest22116:SisiReminder()
    print("SisiReminder")
    self:NarratorOnlyTask(datas.ChaoxiPaimonReminder)
end

function Quest22116:ChildrenReminder()
    print("ChildrenReminder")
    self:NarratorOnlyTask(datas.ChildrenPaimonReminder)
end

function Quest22116:OnSubStart2211601(arg1)
    print("OnSubStart2211601")
end

function Quest22116:OnSubFinish2211601(arg1)
    print("OnSubFinish2211601")
end

function Quest22116:OnSubFailed2211601(arg1)
    print("OnSubFailed2211601")
end

function Quest22116:OnSubStart2211602(arg1)
    print("OnSubStart2211602")
end

function Quest22116:OnSubFinish2211602(arg1)
    print("OnSubFinish2211602")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.HideChang)
end

function Quest22116:OnSubFailed2211602(arg1)
    print("OnSubFailed2211602")
end

function Quest22116:OnSubStart2211603(arg1)
    print("OnSubStart2211603")
end

function Quest22116:OnSubFinish2211603(arg1)
    print("OnSubFinish2211603")
    self:SetQuestVarWithInterval(subIDs.q2211603, 1, 1, 3)
end

function Quest22116:OnSubFailed2211603(arg1)
    print("OnSubFailed2211603")
end

function Quest22116:OnSubStart2211604(arg1)
    print("OnSubStart2211604")
end

function Quest22116:OnSubFinish2211604(arg1)
    print("OnSubFinish2211604")
end

function Quest22116:OnSubFailed2211604(arg1)
    print("OnSubFailed2211604")
end

function Quest22116:OnSubStart2211605(arg1)
    print("OnSubStart2211605")
end

function Quest22116:OnSubFinish2211605(arg1)
    print("OnSubFinish2211605")
end

function Quest22116:OnSubFailed2211605(arg1)
    print("OnSubFailed2211605")
end

function Quest22116:OnSubStart2211606(arg1)
    print("OnSubStart2211606")
    self:CreateQuestNpc(arg1, npcs.Npc162401Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc162401Data.alias)
    questNpcActor:DoFreeStyle(4190)
    questNpcActor:EnableInteraction(false)
end

function Quest22116:OnSubFinish2211606(arg1)
    print("OnSubFinish2211606")
    self:NarratorOnlyTask(datas.FightPaimonReminder)
end

function Quest22116:OnSubFailed2211606(arg1)
    print("OnSubFailed2211606")
end

function Quest22116:OnSubStart2211609(arg1)
    print("OnSubStart2211609")
    self:CreateQuestNpc(arg1, npcs.Npc2001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2015Data.id, 2)
end

function Quest22116:OnSubFinish2211609(arg1)
    print("OnSubFinish2211609")
    self:SetQuestVar(subIDs.q2211609, 2, 1)
    self:ActionSafeCall(self.ZhihuaReminder)
end

function Quest22116:OnSubFailed2211609(arg1)
    print("OnSubFailed2211609")
end

function Quest22116:OnSubStart2211610(arg1)
    print("OnSubStart2211610")
    self:CreateQuestNpc(arg1, npcs.Npc203701Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc207601Data.id, 2)
    self:NotifyTo(npcs.Npc2037Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2076Data.alias, 1, true)
end

function Quest22116:OnSubFinish2211610(arg1)
    print("OnSubFinish2211610")
    self:SetQuestVar(subIDs.q2211610, 2, 1)
    self:ActionSafeCall(self.SisiReminder)
end

function Quest22116:OnSubFailed2211610(arg1)
    print("OnSubFailed2211610")
end

function Quest22116:OnSubStart2211611(arg1)
    print("OnSubStart2211611")
    self:CreateQuestNpc(arg1, npcs.Npc2031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2074Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2030Data.id, 3)
end

function Quest22116:OnSubFinish2211611(arg1)
    print("OnSubFinish2211611")
    self:SetQuestVar(subIDs.q2211611, 2, 1)
    self:ActionSafeCall(self.ChildrenReminder)
end

function Quest22116:OnSubFailed2211611(arg1)
    print("OnSubFailed2211611")
end

function Quest22116:OnSubStart2211613(arg1)
    print("OnSubStart2211613")
end

function Quest22116:OnSubFinish2211613(arg1)
    print("OnSubFinish2211613")
end

function Quest22116:OnSubFailed2211613(arg1)
    print("OnSubFailed2211613")
end

function Quest22116:OnSubStart2211607(arg1)
    print("OnSubStart2211607")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc162401Data.alias)
    questNpcActor:DoFreeStyle(4190, false)
    questNpcActor:EnableInteraction(false)
    self:NarratorOnlyTask(datas.FightPaimonReminder)
end

function Quest22116:OnSubFinish2211607(arg1)
    print("OnSubFinish2211607")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc162401Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:EnableInteraction(true)
end

function Quest22116:OnSubFailed2211607(arg1)
    print("OnSubFailed2211607")
end

function Quest22116:OnSubStart2211612(arg1)
    print("OnSubStart2211612")
end

function Quest22116:OnSubFinish2211612(arg1)
    print("OnSubFinish2211612")
    self:DestroyQuestNpcActor(npcs.Npc203701Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc207601Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2031Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2074Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2030Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2001Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc2015Data.alias, 0)
    self:LightNotifyTo(npcs.Npc2037Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2076Data.alias, 0, true)
end

function Quest22116:OnSubFailed2211612(arg1)
    print("OnSubFailed2211612")
end

function Quest22116:OnSubStart2211614(arg1)
    print("OnSubStart2211614")
end

function Quest22116:OnSubFinish2211614(arg1)
    print("OnSubFinish2211614")
end

function Quest22116:OnSubFailed2211614(arg1)
    print("OnSubFailed2211614")
end

function Quest22116:OnSubStart2211608(arg1)
    print("OnSubStart2211608")
end

function Quest22116:OnSubFinish2211608(arg1)
    print("OnSubFinish2211608")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyChang)
    self:LightNotifyTo(npcs.Npc1624Data.alias, 0, true)
end

function Quest22116:OnSubFailed2211608(arg1)
    print("OnSubFailed2211608")
end

function Quest22116:OnSubStart2211615(arg1)
    print("OnSubStart2211615")
end

function Quest22116:OnSubFinish2211615(arg1)
    print("OnSubFinish2211615")
end

function Quest22116:OnSubFailed2211615(arg1)
    print("OnSubFailed2211615")
end

return Quest22116
