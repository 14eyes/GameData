require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19032 = class("Quest19032", QuestActorProxy)
Quest19032.defaultAlias = "Quest19032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903201"] = self.OnSubStart1903201,
        ["1903202"] = self.OnSubStart1903202,
        ["1903203"] = self.OnSubStart1903203,
        ["1903204"] = self.OnSubStart1903204,
        ["1903205"] = self.OnSubStart1903205
    }
end

function Quest19032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903201"] = self.OnSubFinish1903201,
        ["1903202"] = self.OnSubFinish1903202,
        ["1903203"] = self.OnSubFinish1903203,
        ["1903204"] = self.OnSubFinish1903204,
        ["1903205"] = self.OnSubFinish1903205
    }
end

function Quest19032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1903201"] = self.OnSubFailed1903201,
        ["1903202"] = self.OnSubFailed1903202,
        ["1903203"] = self.OnSubFailed1903203,
        ["1903204"] = self.OnSubFailed1903204,
        ["1903205"] = self.OnSubFailed1903205
    }
end

function Quest19032:Start()
    print("Start")
end

function Quest19032:OnDestroy()
    print("OnDestroy")
end

function Quest19032:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10907Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
end

function Quest19032:OnMainFailed(arg1)
    print("OnMainFailed")
    actorMgr:DestroyEntityActor(datas.Q1903205Trigger_.alias, 3, false)
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10907Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
end

function Quest19032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10908Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10909Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10903Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10904Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10907Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q1903205Trigger_.alias, 3, false)
end

function Quest19032:OnSubStart1903201(arg1)
    print("OnSubStart1903201")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903201)
    self:CreateQuestNpc(arg1, npcs.Npc10918Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19032:OnSubFinish1903201(arg1)
    print("OnSubFinish1903201")
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
end

function Quest19032:OnSubFailed1903201(arg1)
    print("OnSubFailed1903201")
end

function Quest19032:OnSubStart1903202(arg1)
    print("OnSubStart1903202")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903202)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19032:OnSubFinish1903202(arg1)
    print("OnSubFinish1903202")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19032:OnSubFailed1903202(arg1)
    print("OnSubFailed1903202")
end

function Quest19032:OnSubStart1903203(arg1)
    print("OnSubStart1903203")
    actorMgr:CreateActorWithPos(datas.Q1903205Trigger_.alias, datas.Q1903205Trigger_.script, datas.Q1903205Trigger_.id, 0, datas.Q1903205Trigger_.point.pos, datas.Q1903205Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10907Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19032:OnSubFinish1903203(arg1)
    print("OnSubFinish1903203")
end

function Quest19032:OnSubFailed1903203(arg1)
    print("OnSubFailed1903203")
end

function Quest19032:OnSubStart1903204(arg1)
    print("OnSubStart1903204")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903204)
    self:CreateQuestNpc(arg1, npcs.Npc10918Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10905Data.id, 3)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19032:OnSubFinish1903204(arg1)
    print("OnSubFinish1903204")
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10907Data.alias, 3)
end

function Quest19032:OnSubFailed1903204(arg1)
    print("OnSubFailed1903204")
end

function Quest19032:OnSubStart1903205(arg1)
    print("OnSubStart1903205")
    self:CreateQuestNpc(arg1, npcs.Npc10907Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19032:OnSubFinish1903205(arg1)
    print("OnSubFinish1903205")
    self:SafeDestroyQuestNpc(npcs.Npc10907Data.alias, 3)
end

function Quest19032:OnSubFailed1903205(arg1)
    print("OnSubFailed1903205")
end

return Quest19032
