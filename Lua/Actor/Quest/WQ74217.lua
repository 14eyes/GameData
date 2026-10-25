require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74217 = class("Quest74217", QuestActorProxy)
Quest74217.defaultAlias = "Quest74217"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74217:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74217:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7421709"] = self.OnSubStart7421709,
        ["7421716"] = self.OnSubStart7421716,
        ["7421701"] = self.OnSubStart7421701,
        ["7421711"] = self.OnSubStart7421711,
        ["7421702"] = self.OnSubStart7421702,
        ["7421703"] = self.OnSubStart7421703,
        ["7421704"] = self.OnSubStart7421704,
        ["7421705"] = self.OnSubStart7421705,
        ["7421706"] = self.OnSubStart7421706,
        ["7421717"] = self.OnSubStart7421717,
        ["7421707"] = self.OnSubStart7421707,
        ["7421708"] = self.OnSubStart7421708,
        ["7421710"] = self.OnSubStart7421710,
        ["7421712"] = self.OnSubStart7421712,
        ["7421713"] = self.OnSubStart7421713,
        ["7421714"] = self.OnSubStart7421714,
        ["7421715"] = self.OnSubStart7421715
    }
end

function Quest74217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7421709"] = self.OnSubFinish7421709,
        ["7421716"] = self.OnSubFinish7421716,
        ["7421701"] = self.OnSubFinish7421701,
        ["7421711"] = self.OnSubFinish7421711,
        ["7421702"] = self.OnSubFinish7421702,
        ["7421703"] = self.OnSubFinish7421703,
        ["7421704"] = self.OnSubFinish7421704,
        ["7421705"] = self.OnSubFinish7421705,
        ["7421706"] = self.OnSubFinish7421706,
        ["7421717"] = self.OnSubFinish7421717,
        ["7421707"] = self.OnSubFinish7421707,
        ["7421708"] = self.OnSubFinish7421708,
        ["7421710"] = self.OnSubFinish7421710,
        ["7421712"] = self.OnSubFinish7421712,
        ["7421713"] = self.OnSubFinish7421713,
        ["7421714"] = self.OnSubFinish7421714,
        ["7421715"] = self.OnSubFinish7421715
    }
end

function Quest74217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7421709"] = self.OnSubFailed7421709,
        ["7421716"] = self.OnSubFailed7421716,
        ["7421701"] = self.OnSubFailed7421701,
        ["7421711"] = self.OnSubFailed7421711,
        ["7421702"] = self.OnSubFailed7421702,
        ["7421703"] = self.OnSubFailed7421703,
        ["7421704"] = self.OnSubFailed7421704,
        ["7421705"] = self.OnSubFailed7421705,
        ["7421706"] = self.OnSubFailed7421706,
        ["7421717"] = self.OnSubFailed7421717,
        ["7421707"] = self.OnSubFailed7421707,
        ["7421708"] = self.OnSubFailed7421708,
        ["7421710"] = self.OnSubFailed7421710,
        ["7421712"] = self.OnSubFailed7421712,
        ["7421713"] = self.OnSubFailed7421713,
        ["7421714"] = self.OnSubFailed7421714,
        ["7421715"] = self.OnSubFailed7421715
    }
end

function Quest74217:Start()
    print("Start")
end

function Quest74217:OnDestroy()
    print("OnDestroy")
end

function Quest74217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74217:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74217:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74217:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest74217:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74217:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74217:OnSubStart7421709(arg1)
    print("OnSubStart7421709")
    actorUtils.FinishQuestID(false, 7421709)
end

function Quest74217:OnSubFinish7421709(arg1)
    print("OnSubFinish7421709")
end

function Quest74217:OnSubFailed7421709(arg1)
    print("OnSubFailed7421709")
end

function Quest74217:OnSubStart7421716(arg1)
    print("OnSubStart7421716")
end

function Quest74217:OnSubFinish7421716(arg1)
    print("OnSubFinish7421716")
end

function Quest74217:OnSubFailed7421716(arg1)
    print("OnSubFailed7421716")
end

function Quest74217:OnSubStart7421701(arg1)
    print("OnSubStart7421701")
    this:NpcCreateWithNpcTrigger(npcs.Npc20657.id, 7421701, 0, 8)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12700.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20658.id, 0)
end

function Quest74217:OnSubFinish7421701(arg1)
    print("OnSubFinish7421701")
    this:SafeDestroyQuestNpc(npcs.Npc20657.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12700.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20658.alias, 3)
end

function Quest74217:OnSubFailed7421701(arg1)
    print("OnSubFailed7421701")
end

function Quest74217:OnSubStart7421711(arg1)
    print("OnSubStart7421711")
    actorUtils.FinishQuestID(false, 7421711)
end

function Quest74217:OnSubFinish7421711(arg1)
    print("OnSubFinish7421711")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 4, nil, nil, nil)
end

function Quest74217:OnSubFailed7421711(arg1)
    print("OnSubFailed7421711")
end

function Quest74217:OnSubStart7421702(arg1)
    print("OnSubStart7421702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc20657.id, 0, 7421702, 25, false)
end

function Quest74217:OnSubFinish7421702(arg1)
    print("OnSubFinish7421702")
end

function Quest74217:OnSubFailed7421702(arg1)
    print("OnSubFailed7421702")
end

function Quest74217:OnSubStart7421703(arg1)
    print("OnSubStart7421703")
end

function Quest74217:OnSubFinish7421703(arg1)
    print("OnSubFinish7421703")
    this:QuestNarratorTask(datas.NarratorWithId_2, function(arg1)
        if this:GetSubQuestState(7421706) == 3 then
            this:QuestNarratorTask(datas.NarratorWithId_5, function(arg1)
                actorUtils.FinishQuestID(false, 7421717)
            end)
        end
    end)
end

function Quest74217:OnSubFailed7421703(arg1)
    print("OnSubFailed7421703")
end

function Quest74217:OnSubStart7421704(arg1)
    print("OnSubStart7421704")
end

function Quest74217:OnSubFinish7421704(arg1)
    print("OnSubFinish7421704")
    this:QuestNarratorTask(datas.NarratorWithId_3, function(arg1)
        if this:GetSubQuestState(7421706) == 3 then
            this:QuestNarratorTask(datas.NarratorWithId_5, function(arg1)
                actorUtils.FinishQuestID(false, 7421717)
            end)
        end
    end)
end

function Quest74217:OnSubFailed7421704(arg1)
    print("OnSubFailed7421704")
end

function Quest74217:OnSubStart7421705(arg1)
    print("OnSubStart7421705")
end

function Quest74217:OnSubFinish7421705(arg1)
    print("OnSubFinish7421705")
    this:QuestNarratorTask(datas.NarratorWithId_4, function(arg1)
        if this:GetSubQuestState(7421706) == 3 then
            this:QuestNarratorTask(datas.NarratorWithId_5, function(arg1)
                actorUtils.FinishQuestID(false, 7421717)
            end)
        end
    end)
end

function Quest74217:OnSubFailed7421705(arg1)
    print("OnSubFailed7421705")
end

function Quest74217:OnSubStart7421706(arg1)
    print("OnSubStart7421706")
    this:CreateQuestNpc(arg1, npcs.Npc5344.id, 0)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc5345.id, 0)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc5346.id, 0)
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc20657.id, 0)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc12700.id, 0)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DisableInteeHeadCtrl(true)
end

function Quest74217:OnSubFinish7421706(arg1)
    print("OnSubFinish7421706")
end

function Quest74217:OnSubFailed7421706(arg1)
    print("OnSubFailed7421706")
end

function Quest74217:OnSubStart7421717(arg1)
    print("OnSubStart7421717")
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DoFreeStyle(1060, true, nil, true, true, false, true)
    if this:GetQuestVar(7421717, 0) ~= 0 then
        actorUtils.FinishQuestID(false, 7421717)
    end

    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DisableInteeHeadCtrl(true)
end

function Quest74217:OnSubFinish7421717(arg1)
    print("OnSubFinish7421717")
end

function Quest74217:OnSubFailed7421717(arg1)
    print("OnSubFailed7421717")
end

function Quest74217:OnSubStart7421707(arg1)
    print("OnSubStart7421707")
    this:NpcCreateWithNpcTrigger(npcs.Npc5346.id, 7421707, 0, 16)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DisableInteeHeadCtrl(true)
end

function Quest74217:OnSubFinish7421707(arg1)
    print("OnSubFinish7421707")
    this:SafeDestroyQuestNpc(npcs.Npc5344.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5345.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5346.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20657.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12700.alias, 3)
    this:GetQuestNpcActor(npcs.Npc20657.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc12700.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5344.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5345.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5346.alias, 74217):DisableInteeHeadCtrl(false)
end

function Quest74217:OnSubFailed7421707(arg1)
    print("OnSubFailed7421707")
end

function Quest74217:OnSubStart7421708(arg1)
    print("OnSubStart7421708")
    this:DailyNpcSafeHideSelf(npcs.Npc5344.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5345.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5346.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14068.id, 7421708, 0, 35, 1)
end

function Quest74217:OnSubFinish7421708(arg1)
    print("OnSubFinish7421708")
    this:SafeDestroyQuestNpc(npcs.Npc14068.alias, 11)
end

function Quest74217:OnSubFailed7421708(arg1)
    print("OnSubFailed7421708")
end

function Quest74217:OnSubStart7421710(arg1)
    print("OnSubStart7421710")
    this:DailyNpcSafeHideSelf(npcs.Npc5344.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14029.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5345.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5346.alias, 1, true)
end

function Quest74217:OnSubFinish7421710(arg1)
    print("OnSubFinish7421710")
    this:SafeDestroyQuestNpc(npcs.Npc14029.alias, 11)
end

function Quest74217:OnSubFailed7421710(arg1)
    print("OnSubFailed7421710")
end

function Quest74217:OnSubStart7421712(arg1)
    print("OnSubStart7421712")
    this:DailyNpcSafeHideSelf(npcs.Npc5346.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc14069.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14070.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14066.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14065.id, 0)
    this:GetQuestNpcActor(npcs.Npc14065.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14066.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14069.alias, 74217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14070.alias, 74217):DisableInteeHeadCtrl(true)
end

function Quest74217:OnSubFinish7421712(arg1)
    print("OnSubFinish7421712")
    this:GetQuestNpcActor(npcs.Npc14065.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14066.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14069.alias, 74217):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14070.alias, 74217):DisableInteeHeadCtrl(false)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
end

function Quest74217:OnSubFailed7421712(arg1)
    print("OnSubFailed7421712")
end

function Quest74217:OnSubStart7421713(arg1)
    print("OnSubStart7421713")
    this:DailyNpcSafeHideSelf(npcs.Npc5346.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc14067.id, 7421713, 0, 20, 1)
end

function Quest74217:OnSubFinish7421713(arg1)
    print("OnSubFinish7421713")
    this:SafeDestroyQuestNpc(npcs.Npc14065.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc14066.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc14069.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc14070.alias, 11)
    this:SafeDestroyQuestNpc(npcs.Npc14067.alias, 11)
end

function Quest74217:OnSubFailed7421713(arg1)
    print("OnSubFailed7421713")
end

function Quest74217:OnSubStart7421714(arg1)
    print("OnSubStart7421714")
    this:DailyNpcSafeHideSelf(npcs.Npc5344.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5345.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5346.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7421714Trigger", "Actor/Gadget/Q7421714Trigger", 70900002, 0, points.Q7421714Trigger.pos, points.Q7421714Trigger.rot, true, false, 3)
end

function Quest74217:OnSubFinish7421714(arg1)
    print("OnSubFinish7421714")
end

function Quest74217:OnSubFailed7421714(arg1)
    print("OnSubFailed7421714")
end

function Quest74217:OnSubStart7421715(arg1)
    print("OnSubStart7421715")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5346.id, 7421715, 0, 25, 1)
end

function Quest74217:OnSubFinish7421715(arg1)
    print("OnSubFinish7421715")
    this:SafeDestroyQuestNpc(npcs.Npc5346.alias, 3)
end

function Quest74217:OnSubFailed7421715(arg1)
    print("OnSubFailed7421715")
end

return Quest74217
