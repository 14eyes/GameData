require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70003 = class("Quest70003", QuestActorProxy)
Quest70003.defaultAlias = "Quest70003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7000301"] = self.OnSubStart7000301,
        ["7000302"] = self.OnSubStart7000302,
        ["7000303"] = self.OnSubStart7000303,
        ["7000304"] = self.OnSubStart7000304,
        ["7000305"] = self.OnSubStart7000305,
        ["7000306"] = self.OnSubStart7000306,
        ["7000307"] = self.OnSubStart7000307,
        ["7000308"] = self.OnSubStart7000308
    }
end

function Quest70003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7000301"] = self.OnSubFinish7000301,
        ["7000302"] = self.OnSubFinish7000302,
        ["7000303"] = self.OnSubFinish7000303,
        ["7000304"] = self.OnSubFinish7000304,
        ["7000305"] = self.OnSubFinish7000305,
        ["7000306"] = self.OnSubFinish7000306,
        ["7000307"] = self.OnSubFinish7000307,
        ["7000308"] = self.OnSubFinish7000308
    }
end

function Quest70003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7000301"] = self.OnSubFailed7000301,
        ["7000302"] = self.OnSubFailed7000302,
        ["7000303"] = self.OnSubFailed7000303,
        ["7000304"] = self.OnSubFailed7000304,
        ["7000305"] = self.OnSubFailed7000305,
        ["7000306"] = self.OnSubFailed7000306,
        ["7000307"] = self.OnSubFailed7000307,
        ["7000308"] = self.OnSubFailed7000308
    }
end

function Quest70003:Start()
    print("Start")
end

function Quest70003:OnDestroy()
    print("OnDestroy")
end

function Quest70003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1445Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20219Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q70003Trigger1_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70003Trigger2_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q70003Trigger3_.alias, 3, false)
end

function Quest70003:NpcFreeState()
    print("NpcFreeState")
    self:GetQuestNpcActor(npcs.Npc1445Data.alias):DoFreeStateTrigger()
end

function Quest70003:OnSubStart7000301(arg1)
    print("OnSubStart7000301")
end

function Quest70003:OnSubFinish7000301(arg1)
    print("OnSubFinish7000301")
    self:ActionSafeCall(self.NpcFreeState)
end

function Quest70003:OnSubFailed7000301(arg1)
    print("OnSubFailed7000301")
end

function Quest70003:OnSubStart7000302(arg1)
    print("OnSubStart7000302")
    self:CreateQuestNpc(arg1, npcs.Npc1445Data.id, 1)
end

function Quest70003:OnSubFinish7000302(arg1)
    print("OnSubFinish7000302")
end

function Quest70003:OnSubFailed7000302(arg1)
    print("OnSubFailed7000302")
end

function Quest70003:OnSubStart7000303(arg1)
    print("OnSubStart7000303")
    self:CreateQuestNpc(arg1, npcs.Npc20219Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q70003Trigger1_.alias, datas.Q70003Trigger1_.script, datas.Q70003Trigger1_.id, 0, datas.Q70003Trigger1_.point.pos, datas.Q70003Trigger1_.point.rot, true, false, 3)
end

function Quest70003:OnSubFinish7000303(arg1)
    print("OnSubFinish7000303")
end

function Quest70003:OnSubFailed7000303(arg1)
    print("OnSubFailed7000303")
end

function Quest70003:OnSubStart7000304(arg1)
    print("OnSubStart7000304")
end

function Quest70003:OnSubFinish7000304(arg1)
    print("OnSubFinish7000304")
end

function Quest70003:OnSubFailed7000304(arg1)
    print("OnSubFailed7000304")
end

function Quest70003:OnSubStart7000305(arg1)
    print("OnSubStart7000305")
    actorMgr:CreateActorWithPos(datas.Q70003Trigger2_.alias, datas.Q70003Trigger2_.script, datas.Q70003Trigger2_.id, 0, datas.Q70003Trigger2_.point.pos, datas.Q70003Trigger2_.point.rot, true, false, 3)
end

function Quest70003:OnSubFinish7000305(arg1)
    print("OnSubFinish7000305")
    self:NarratorOnlyTask(datas.Reminder03, nil, "")
end

function Quest70003:OnSubFailed7000305(arg1)
    print("OnSubFailed7000305")
end

function Quest70003:OnSubStart7000306(arg1)
    print("OnSubStart7000306")
    actorMgr:CreateActorWithPos(datas.Q70003Trigger3_.alias, datas.Q70003Trigger3_.script, datas.Q70003Trigger3_.id, 0, datas.Q70003Trigger3_.point.pos, datas.Q70003Trigger3_.point.rot, true, false, 3)
end

function Quest70003:OnSubFinish7000306(arg1)
    print("OnSubFinish7000306")
end

function Quest70003:OnSubFailed7000306(arg1)
    print("OnSubFailed7000306")
end

function Quest70003:OnSubStart7000307(arg1)
    print("OnSubStart7000307")
    self:RequestInteraction(npcs.Npc20219Data.alias)
end

function Quest70003:OnSubFinish7000307(arg1)
    print("OnSubFinish7000307")
    self:SafeDestroyQuestNpc(npcs.Npc20219Data.alias, 3)
end

function Quest70003:OnSubFailed7000307(arg1)
    print("OnSubFailed7000307")
end

function Quest70003:OnSubStart7000308(arg1)
    print("OnSubStart7000308")
    self:CreateQuestNpc(arg1, npcs.Npc1431Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1431Data.alias):DoFreeStyle(1240, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc1445Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest70003:OnSubFinish7000308(arg1)
    print("OnSubFinish7000308")
    self:SafeDestroyQuestNpc(npcs.Npc1445Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1431Data.alias, 3)
end

function Quest70003:OnSubFailed7000308(arg1)
    print("OnSubFailed7000308")
end

return Quest70003
