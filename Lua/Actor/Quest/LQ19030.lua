require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19030 = class("Quest19030", QuestActorProxy)
Quest19030.defaultAlias = "Quest19030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903001"] = self.OnSubStart1903001,
        ["1903002"] = self.OnSubStart1903002,
        ["1903007"] = self.OnSubStart1903007,
        ["1903003"] = self.OnSubStart1903003,
        ["1903004"] = self.OnSubStart1903004,
        ["1903005"] = self.OnSubStart1903005,
        ["1903006"] = self.OnSubStart1903006,
        ["1903008"] = self.OnSubStart1903008
    }
end

function Quest19030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903001"] = self.OnSubFinish1903001,
        ["1903002"] = self.OnSubFinish1903002,
        ["1903007"] = self.OnSubFinish1903007,
        ["1903003"] = self.OnSubFinish1903003,
        ["1903004"] = self.OnSubFinish1903004,
        ["1903005"] = self.OnSubFinish1903005,
        ["1903006"] = self.OnSubFinish1903006,
        ["1903008"] = self.OnSubFinish1903008
    }
end

function Quest19030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1903001"] = self.OnSubFailed1903001,
        ["1903002"] = self.OnSubFailed1903002,
        ["1903007"] = self.OnSubFailed1903007,
        ["1903003"] = self.OnSubFailed1903003,
        ["1903004"] = self.OnSubFailed1903004,
        ["1903005"] = self.OnSubFailed1903005,
        ["1903006"] = self.OnSubFailed1903006,
        ["1903008"] = self.OnSubFailed1903008
    }
end

function Quest19030:Start()
    print("Start")
end

function Quest19030:OnDestroy()
    print("OnDestroy")
end

function Quest19030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19030:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q1903001Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1903002Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1903006Trigger_.alias, 3, false)
end

function Quest19030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q1903001Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1903002Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q1903006Trigger_.alias, 3, false)
end

function Quest19030:OnSubStart1903001(arg1)
    print("OnSubStart1903001")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903001)
    self:CreateQuestNpc(arg1, npcs.Npc10917Data.id, 2)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903001(arg1)
    print("OnSubFinish1903001")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19030:OnSubFailed1903001(arg1)
    print("OnSubFailed1903001")
end

function Quest19030:OnSubStart1903002(arg1)
    print("OnSubStart1903002")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903002)
    actorMgr:CreateActorWithPos(datas.Q1903002Trigger_.alias, datas.Q1903002Trigger_.script, datas.Q1903002Trigger_.id, 0, datas.Q1903002Trigger_.point.pos, datas.Q1903002Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903002(arg1)
    print("OnSubFinish1903002")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
end

function Quest19030:OnSubFailed1903002(arg1)
    print("OnSubFailed1903002")
end

function Quest19030:OnSubStart1903007(arg1)
    print("OnSubStart1903007")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903002)
    actorMgr:CreateActorWithPos(datas.Q1903002Trigger_.alias, datas.Q1903002Trigger_.script, datas.Q1903002Trigger_.id, 0, datas.Q1903002Trigger_.point.pos, datas.Q1903002Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
    self:NarratorOnlyTaskByData(clientData.NarratorData1, nil, "StoryCut")
end

function Quest19030:OnSubFinish1903007(arg1)
    print("OnSubFinish1903007")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
end

function Quest19030:OnSubFailed1903007(arg1)
    print("OnSubFailed1903007")
end

function Quest19030:OnSubStart1903003(arg1)
    print("OnSubStart1903003")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903003)
    self:CreateQuestNpc(arg1, npcs.Npc10903Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10904Data.id, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903003(arg1)
    print("OnSubFinish1903003")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
end

function Quest19030:OnSubFailed1903003(arg1)
    print("OnSubFailed1903003")
end

function Quest19030:OnSubStart1903004(arg1)
    print("OnSubStart1903004")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903004)
    self:CreateQuestNpc(arg1, npcs.Npc10913Data.id, 2)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903004(arg1)
    print("OnSubFinish1903004")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10913Data.alias, 3)
end

function Quest19030:OnSubFailed1903004(arg1)
    print("OnSubFailed1903004")
end

function Quest19030:OnSubStart1903005(arg1)
    print("OnSubStart1903005")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903005)
    self:CreateQuestNpc(arg1, npcs.Npc10908Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10909Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10909Data.alias):DoFreeStyle(1120, true, nil, true, true)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903005(arg1)
    print("OnSubFinish1903005")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data2.alias, 3)
end

function Quest19030:OnSubFailed1903005(arg1)
    print("OnSubFailed1903005")
end

function Quest19030:OnSubStart1903006(arg1)
    print("OnSubStart1903006")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903101)
    actorMgr:CreateActorWithPos(datas.Q1903006Trigger_.alias, datas.Q1903006Trigger_.script, datas.Q1903006Trigger_.id, 0, datas.Q1903006Trigger_.point.pos, datas.Q1903006Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903006(arg1)
    print("OnSubFinish1903006")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
end

function Quest19030:OnSubFailed1903006(arg1)
    print("OnSubFailed1903006")
end

function Quest19030:OnSubStart1903008(arg1)
    print("OnSubStart1903008")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903101)
    actorMgr:CreateActorWithPos(datas.Q1903006Trigger_.alias, datas.Q1903006Trigger_.script, datas.Q1903006Trigger_.id, 0, datas.Q1903006Trigger_.point.pos, datas.Q1903006Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19030:OnSubFinish1903008(arg1)
    print("OnSubFinish1903008")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
end

function Quest19030:OnSubFailed1903008(arg1)
    print("OnSubFailed1903008")
end

return Quest19030
