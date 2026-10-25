require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74118 = class("Quest74118", QuestActorProxy)
Quest74118.defaultAlias = "Quest74118"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74118:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411807"] = self.OnSubStart7411807,
        ["7411808"] = self.OnSubStart7411808,
        ["7411801"] = self.OnSubStart7411801,
        ["7411802"] = self.OnSubStart7411802,
        ["7411803"] = self.OnSubStart7411803,
        ["7411804"] = self.OnSubStart7411804,
        ["7411805"] = self.OnSubStart7411805,
        ["7411806"] = self.OnSubStart7411806
    }
end

function Quest74118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411807"] = self.OnSubFinish7411807,
        ["7411808"] = self.OnSubFinish7411808,
        ["7411801"] = self.OnSubFinish7411801,
        ["7411802"] = self.OnSubFinish7411802,
        ["7411803"] = self.OnSubFinish7411803,
        ["7411804"] = self.OnSubFinish7411804,
        ["7411805"] = self.OnSubFinish7411805,
        ["7411806"] = self.OnSubFinish7411806
    }
end

function Quest74118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74118:Start()
    print("Start")
end

function Quest74118:OnDestroy()
    print("OnDestroy")
end

function Quest74118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74118:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12700Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5043Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13557Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5043Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7411802N20657Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411803N20658Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411804N20658Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7411806N5043Trigger", 3, false)
end

function Quest74118:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74118:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74118:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74118:OnSubStart7411807(arg1)
    print("OnSubStart7411807")
    actorUtils.FinishQuestID(false, 7411807)
end

function Quest74118:OnSubFinish7411807(arg1)
    print("OnSubFinish7411807")
end

function Quest74118:OnSubStart7411808(arg1)
    print("OnSubStart7411808")
end

function Quest74118:OnSubFinish7411808(arg1)
    print("OnSubFinish7411808")
end

function Quest74118:OnSubStart7411801(arg1)
    print("OnSubStart7411801")
    this:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc20658Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest74118:OnSubFinish7411801(arg1)
    print("OnSubFinish7411801")
    this:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest74118:OnSubStart7411802(arg1)
    print("OnSubStart7411802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20657Data.id, 7411802, 0, 15, 1)
end

function Quest74118:OnSubFinish7411802(arg1)
    print("OnSubFinish7411802")
    this:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
end

function Quest74118:OnSubStart7411803(arg1)
    print("OnSubStart7411803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20658Data.id, 7411803, 0, 10, 1)
end

function Quest74118:OnSubFinish7411803(arg1)
    print("OnSubFinish7411803")
    this:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest74118:OnSubStart7411804(arg1)
    print("OnSubStart7411804")
    this:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20658Data.id, 7411804, 0, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12700Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13557Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20657Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc12700Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13557Data.alias):SitOnChair(8040, true)
    this:CreateLocalGadget(707111156, "", {x = 3510.107, y = 422.19, z = 4597.469}, {x = 10.717, y = 82.737, z = -0.295}, 3, nil, nil, false)
end

function Quest74118:OnSubFinish7411804(arg1)
    print("OnSubFinish7411804")
end

function Quest74118:OnSubStart7411805(arg1)
    print("OnSubStart7411805")
    this:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5043Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc20657Data.alias):SitOnChair(8065, true)
    this:GetQuestNpcActor(npcs.Npc12700Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13557Data.alias):SitOnChair(8040, true)
    this:CreateLocalGadget(707111156, "", {x = 3510.107, y = 422.19, z = 4597.469}, {x = 10.717, y = 82.737, z = -0.295}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc12700Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc20657Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(8065, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc20658Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc12700Data.alias):LookAtTarget(this:GetRealAlias(npcs.Npc20657Data.alias), datas.lookParam, true)
end

function Quest74118:OnSubFinish7411805(arg1)
    print("OnSubFinish7411805")
    this:RemoveLocalGadget(707111156, "")
    this:GetQuestNpcActor(npcs.Npc12700Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc20657Data.alias):DisableInteeHeadCtrl(true)
    this:NPCDestroyImmediately(npcs.Npc20657Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc12700Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5043Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13557Data.alias, 3)
end

function Quest74118:OnSubStart7411806(arg1)
    print("OnSubStart7411806")
    this:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12700Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5043Data.id, 7411806, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5043Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5055Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74118:OnSubFinish7411806(arg1)
    print("OnSubFinish7411806")
    this:LightNotifyTo(npcs.Npc5055Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12700Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5043Data.alias, 3)
end

return Quest74118
