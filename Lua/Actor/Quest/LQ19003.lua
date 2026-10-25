require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19003 = class("Quest19003", QuestActorProxy)
Quest19003.defaultAlias = "Quest19003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1900301"] = self.OnSubStart1900301,
        ["1900302"] = self.OnSubStart1900302,
        ["1900303"] = self.OnSubStart1900303,
        ["1900304"] = self.OnSubStart1900304,
        ["1900305"] = self.OnSubStart1900305,
        ["1900306"] = self.OnSubStart1900306,
        ["1900307"] = self.OnSubStart1900307,
        ["1900308"] = self.OnSubStart1900308
    }
end

function Quest19003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1900301"] = self.OnSubFinish1900301,
        ["1900302"] = self.OnSubFinish1900302,
        ["1900303"] = self.OnSubFinish1900303,
        ["1900304"] = self.OnSubFinish1900304,
        ["1900305"] = self.OnSubFinish1900305,
        ["1900306"] = self.OnSubFinish1900306,
        ["1900307"] = self.OnSubFinish1900307,
        ["1900308"] = self.OnSubFinish1900308
    }
end

function Quest19003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1900301"] = self.OnSubFailed1900301,
        ["1900302"] = self.OnSubFailed1900302,
        ["1900303"] = self.OnSubFailed1900303,
        ["1900304"] = self.OnSubFailed1900304,
        ["1900305"] = self.OnSubFailed1900305,
        ["1900306"] = self.OnSubFailed1900306,
        ["1900307"] = self.OnSubFailed1900307,
        ["1900308"] = self.OnSubFailed1900308
    }
end

function Quest19003:Start()
    print("Start")
end

function Quest19003:OnDestroy()
    print("OnDestroy")
end

function Quest19003:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19003TriggerBabala03_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19003Trigger190030501_.alias, 3, false)
end

function Quest19003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1471Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc147101Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19003TriggerBabala03_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q19003Trigger190030501_.alias, 3, false)
end

function Quest19003:OnSubStart1900301(arg1)
    print("OnSubStart1900301")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 2)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q19003TriggerBabala03_.alias, datas.Q19003TriggerBabala03_.script, datas.Q19003TriggerBabala03_.id, 0, datas.Q19003TriggerBabala03_.point.pos, datas.Q19003TriggerBabala03_.point.rot, true, false, 3)
end

function Quest19003:OnSubFinish1900301(arg1)
    print("OnSubFinish1900301")
end

function Quest19003:OnSubFailed1900301(arg1)
    print("OnSubFailed1900301")
end

function Quest19003:OnSubStart1900302(arg1)
    print("OnSubStart1900302")
    self:ShowBlackScreen(0, 0.6, 0.3, nil, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900301)
    self:RequestInteraction(npcs.Coop_BarbaraData.alias)
end

function Quest19003:OnSubFinish1900302(arg1)
    print("OnSubFinish1900302")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
end

function Quest19003:OnSubFailed1900302(arg1)
    print("OnSubFailed1900302")
end

function Quest19003:OnSubStart1900303(arg1)
    print("OnSubStart1900303")
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 2)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
end

function Quest19003:OnSubFinish1900303(arg1)
    print("OnSubFinish1900303")
end

function Quest19003:OnSubFailed1900303(arg1)
    print("OnSubFailed1900303")
end

function Quest19003:OnSubStart1900304(arg1)
    print("OnSubStart1900304")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
end

function Quest19003:OnSubFinish1900304(arg1)
    print("OnSubFinish1900304")
    self:NarratorOnlyTaskByData(datas.NarratorWithId19003001)
end

function Quest19003:OnSubFailed1900304(arg1)
    print("OnSubFailed1900304")
end

function Quest19003:OnSubStart1900305(arg1)
    print("OnSubStart1900305")
    self:CreateQuestNpc(arg1, npcs.Coop_BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc147101Data.id, 2)
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900303)
    actorMgr:CreateActorWithPos(datas.Q19003Trigger190030501_.alias, datas.Q19003Trigger190030501_.script, datas.Q19003Trigger190030501_.id, 0, datas.Q19003Trigger190030501_.point.pos, datas.Q19003Trigger190030501_.point.rot, true, false, 3)
end

function Quest19003:OnSubFinish1900305(arg1)
    print("OnSubFinish1900305")
    self:SafeDestroyQuestNpc(npcs.Coop_BarbaraData.alias, 3)
    self:NotifyTo(npcs.Npc1602Data.alias, 0, true)
    self:TryPauseCurAutoNarrator()
end

function Quest19003:OnSubFailed1900305(arg1)
    print("OnSubFailed1900305")
end

function Quest19003:OnSubStart1900306(arg1)
    print("OnSubStart1900306")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
end

function Quest19003:OnSubFinish1900306(arg1)
    print("OnSubFinish1900306")
end

function Quest19003:OnSubFailed1900306(arg1)
    print("OnSubFailed1900306")
end

function Quest19003:OnSubStart1900307(arg1)
    print("OnSubStart1900307")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
end

function Quest19003:OnSubFinish1900307(arg1)
    print("OnSubFinish1900307")
end

function Quest19003:OnSubFailed1900307(arg1)
    print("OnSubFailed1900307")
end

function Quest19003:OnSubStart1900308(arg1)
    print("OnSubStart1900308")
    self:NotifyTo(npcs.Npc1471Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1602Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(101401, 1900306)
end

function Quest19003:OnSubFinish1900308(arg1)
    print("OnSubFinish1900308")
end

function Quest19003:OnSubFailed1900308(arg1)
    print("OnSubFailed1900308")
end

return Quest19003
