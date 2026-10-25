require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3019 = class("Quest3019", QuestActorProxy)
Quest3019.defaultAlias = "Quest3019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["301903"] = self.OnSubStart301903,
        ["301904"] = self.OnSubStart301904,
        ["301905"] = self.OnSubStart301905,
        ["301906"] = self.OnSubStart301906,
        ["301907"] = self.OnSubStart301907,
        ["301908"] = self.OnSubStart301908,
        ["301909"] = self.OnSubStart301909,
        ["301910"] = self.OnSubStart301910,
        ["301911"] = self.OnSubStart301911,
        ["301912"] = self.OnSubStart301912,
        ["301913"] = self.OnSubStart301913,
        ["301914"] = self.OnSubStart301914,
        ["301915"] = self.OnSubStart301915,
        ["301917"] = self.OnSubStart301917,
        ["301918"] = self.OnSubStart301918,
        ["301916"] = self.OnSubStart301916,
        ["301919"] = self.OnSubStart301919,
        ["301921"] = self.OnSubStart301921,
        ["301920"] = self.OnSubStart301920,
        ["301902"] = self.OnSubStart301902,
        ["301901"] = self.OnSubStart301901
    }
end

function Quest3019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["301903"] = self.OnSubFinish301903,
        ["301904"] = self.OnSubFinish301904,
        ["301905"] = self.OnSubFinish301905,
        ["301906"] = self.OnSubFinish301906,
        ["301907"] = self.OnSubFinish301907,
        ["301908"] = self.OnSubFinish301908,
        ["301909"] = self.OnSubFinish301909,
        ["301910"] = self.OnSubFinish301910,
        ["301911"] = self.OnSubFinish301911,
        ["301912"] = self.OnSubFinish301912,
        ["301913"] = self.OnSubFinish301913,
        ["301914"] = self.OnSubFinish301914,
        ["301915"] = self.OnSubFinish301915,
        ["301917"] = self.OnSubFinish301917,
        ["301918"] = self.OnSubFinish301918,
        ["301916"] = self.OnSubFinish301916,
        ["301919"] = self.OnSubFinish301919,
        ["301921"] = self.OnSubFinish301921,
        ["301920"] = self.OnSubFinish301920,
        ["301902"] = self.OnSubFinish301902,
        ["301901"] = self.OnSubFinish301901
    }
end

function Quest3019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest3019:Start()
    print("Start")
end

function Quest3019:OnDestroy()
    print("OnDestroy")
end

function Quest3019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3019:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest3019:OnSubStart301903(arg1)
    print("OnSubStart301903")
    self:CreateQuestNpc(arg1, npcs.Npc4318Data.id, 1)
end

function Quest3019:OnSubFinish301903(arg1)
    print("OnSubFinish301903")
    self:SafeDestroyQuestNpc(npcs.Npc4318Data.alias, 3)
end

function Quest3019:OnSubStart301904(arg1)
    print("OnSubStart301904")
    self:CreateQuestNpc(arg1, npcs.Npc12703Data.id, 0)
    self:NotifyTo(npcs.Npc4402Data.alias, 1, true)
end

function Quest3019:OnSubFinish301904(arg1)
    print("OnSubFinish301904")
    self:SafeDestroyQuestNpc(npcs.Npc12703Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4402Data.alias, 0, true)
    end)
end

function Quest3019:OnSubStart301905(arg1)
    print("OnSubStart301905")
    self:CreateQuestNpc(arg1, npcs.Npc4320Data.id, 1)
end

function Quest3019:OnSubFinish301905(arg1)
    print("OnSubFinish301905")
    self:SafeDestroyQuestNpc(npcs.Npc4320Data.alias, 3)
end

function Quest3019:OnSubStart301906(arg1)
    print("OnSubStart301906")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias, 3019):LookAt(sceneData:GetDummyPoint(3, "Q301906_CynoLook").pos)
        actorMgr:CreateActorWithPos("Q3019Trigger3", "Actor/Gadget/Q3019Trigger3", 70900002, 0, {x = -1990.391, y = 286.906, z = 4082.279}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12702Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12764Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12702Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
        arg1_2:NotifyTo(npcs.Npc4406Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4407Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4235Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4409Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc4232Data.alias, 1, true)
    end)
end

function Quest3019:OnSubFinish301906(arg1)
    print("OnSubFinish301906")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4406Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4407Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4235Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4409Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4232Data.alias, 0, true)
    end)
end

function Quest3019:OnSubStart301907(arg1)
    print("OnSubStart301907")
    actorMgr:CreateActorWithPos("Q3019Trigger", "Actor/Gadget/Q3019Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q301908_T301908_N1058").pos, sceneData:GetDummyPoint(3, "Q301908_T301908_N1058").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12701Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12701Data.alias, 3019)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 4, 6, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            local actor = actorMgr:GetActor(clientData.ActorAlias)
            actor:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1, datas.RoutePointsData, 4, 6, -1, function(arg1)
                arg1:SyncPos(2)
                if arg1.BeFollowState == BeFollowState.FAILED then
                    return
                end

                actorUtils.FinishQuestID(false, 301907)
            end, nil, nil, actor.MovePause, actor.MoveResume, nil, true)

            actor:NarratorOnlyTaskByData(datas.IsakKaiche, nil, 3019)
        end, nil, nil, nil, nil, nil, true)

        local v = arg1_2:GetQuestNpcActor(npcs.Npc12701Data.alias)
        v:DisableInteeHeadCtrl(true)
        v:SetWalkSpeedRatio(1.1)
    end)
end

function Quest3019:OnSubFinish301907(arg1)
    print("OnSubFinish301907")
end

function Quest3019:OnSubStart301908(arg1)
    print("OnSubStart301908")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1058Data.id, 1, npcs.Npc1058Data.alias)
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_PAUSE_TASK)
    self:GetQuestNpcActor(npcs.Npc12701Data.alias, 3019):ClearFollowTask()
end

function Quest3019:OnSubFinish301908(arg1)
    print("OnSubFinish301908")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
end

function Quest3019:OnSubStart301909(arg1)
    print("OnSubStart301909")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias, 3019)
        arg1_2:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsDatasAINUO, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            actor.GetQuestNpcActor(actor, npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
            actor.CallDelay(actor, 4, function(arg1)
                local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1058Data.alias)
                actor:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsDataSearch2, function(arg1)
                    actor:CallDelay(3, function(arg1)
                        actor:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsDataSearch3, function(arg1)
                            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
                            actor:CallDelay(3, function(arg1)
                                actor:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
                                actor:CallDelay(3, function(arg1)
                                    actorUtils.FinishQuestID(false, 301909)
                                end)
                            end)
                        end)
                    end)
                end)
            end)
        end)

        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12701Data.id, 0)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc12914Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12915Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12916Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12918Data.id, 0)
end

function Quest3019:OnSubFinish301909(arg1)
    print("OnSubFinish301909")
end

function Quest3019:OnSubStart301910(arg1)
    print("OnSubStart301910")
    actorMgr:CreateActorWithPos("Q301910Talk", "Actor/Gadget/Q301910Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q301909_N1058_Move3").pos, sceneData:GetDummyPoint(3, "Q301909_N1058_Move3").rot, true, false, 3)
end

function Quest3019:OnSubFinish301910(arg1)
    print("OnSubFinish301910")
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12914Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12915Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12916Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12918Data.alias, 3)
end

function Quest3019:OnSubStart301911(arg1)
    print("OnSubStart301911")
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
    actorMgr:CreateActorWithPos("Q301911Talk", "Actor/Gadget/Q301911Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q301911_T301911_N1059").pos, sceneData:GetDummyPoint(3, "Q301911_T301911_N1059").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1059Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc1052Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest3019:OnSubFinish301911(arg1)
    print("OnSubFinish301911")
    self:SafeDestroyQuestNpc(npcs.Npc1059Data.alias, 3)
end

function Quest3019:OnSubStart301912(arg1)
    print("OnSubStart301912")
    actorMgr:CreateActorWithPos("Q3019Trigger2", "Actor/Gadget/Q3019Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q301913_N1052_Q301912_guide").pos, sceneData:GetDummyPoint(3, "Q301913_N1052_Q301912_guide").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1052Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(true)
        arg1_2:GetQuestNpcActor(npcs.Npc1059Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest3019:OnSubFinish301912(arg1)
    print("OnSubFinish301912")
    self:DestroyQuestNpcActor(npcs.Npc1058Data.alias, 1077)
    self:DestroyQuestNpcActor(npcs.Npc1059Data.alias, 1077)
end

function Quest3019:OnSubStart301913(arg1)
    print("OnSubStart301913")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1052Data.alias)
    end, nil, nil, "", false, true)
end

function Quest3019:OnSubFinish301913(arg1)
    print("OnSubFinish301913")
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3019:OnSubStart301914(arg1)
    print("OnSubStart301914")
    self:CreateQuestNpc(arg1, npcs.Npc12706Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12706Data.alias):SitOnChair(0)
    actorMgr:CreateActorWithPos("Q301914Talk", "Actor/Gadget/Q301914Talk", 70900002, 0, {x = -1630.325, y = 263.949, z = 3890.772}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3019:OnSubFinish301914(arg1)
    print("OnSubFinish301914")
    self:SafeDestroyQuestNpc(npcs.Npc12706Data.alias, 3)
end

function Quest3019:OnSubStart301915(arg1)
    print("OnSubStart301915")
    actorMgr:CreateActorWithPos("Q301915Talk", "Actor/Gadget/Q301915Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q301915_T301915_N12708").pos, sceneData:GetDummyPoint(3, "Q301915_T301915_N12708").rot, true, false, 3)
end

function Quest3019:OnSubFinish301915(arg1)
    print("OnSubFinish301915")
    self:SafeDestroyQuestNpc(npcs.Npc12707Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12706Data.alias, 3)
end

function Quest3019:OnSubStart301917(arg1)
    print("OnSubStart301917")
end

function Quest3019:OnSubFinish301917(arg1)
    print("OnSubFinish301917")
end

function Quest3019:OnSubStart301918(arg1)
    print("OnSubStart301918")
    self:CallDelay(2, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc12706Data.id, 0, npcs.Npc12706Data.alias)
    end)
end

function Quest3019:OnSubFinish301918(arg1)
    print("OnSubFinish301918")
    self:TransmitPlayerWithTextByQuestId(301918, 1, {"QUEST_Message_Q3007"}, 2.5)
    self:SafeDestroyQuestNpc(npcs.Npc12706Data.alias, 3)
end

function Quest3019:OnSubStart301916(arg1)
    print("OnSubStart301916")
    actorMgr:CreateActorWithPos("Q301916Talk", "Actor/Gadget/Q301916Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q301918_Transmit").pos, sceneData:GetDummyPoint(3, "Q301918_Transmit").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
    end)
end

function Quest3019:OnSubFinish301916(arg1)
    print("OnSubFinish301916")
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3019:OnSubStart301919(arg1)
    print("OnSubStart301919")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12866Data.id, 0)
    end)
end

function Quest3019:OnSubFinish301919(arg1)
    print("OnSubFinish301919")
end

function Quest3019:OnSubStart301921(arg1)
    print("OnSubStart301921")
    self:AfterMainPageActiveSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1052Data.id, 0)
        actorMgr:CreateActorWithPos("Q301921Talk", "Actor/Gadget/Q301921Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q301902_N12701").pos, sceneData:GetDummyPoint(3, "Q301902_N12701").rot, true, false, 3)
    end)
end

function Quest3019:OnSubFinish301921(arg1)
    print("OnSubFinish301921")
    self:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3019:OnSubStart301920(arg1)
    print("OnSubStart301920")
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
    actorMgr:CreateActorWithPos("Q301920Talk", "Actor/Gadget/Q301920Talk", 70900002, 0, sceneData:GetDummyPoint(1077, "Q301921_T301921_N1059").pos, sceneData:GetDummyPoint(1077, "Q301921_T301921_N1059").rot, true, false, 1077)
end

function Quest3019:OnSubFinish301920(arg1)
    print("OnSubFinish301920")
end

function Quest3019:OnSubStart301902(arg1)
    print("OnSubStart301902")
    self:CreateQuestNpc(arg1, npcs.Npc1059Data.id, 0)
end

function Quest3019:OnSubFinish301902(arg1)
    print("OnSubFinish301902")
end

function Quest3019:OnSubStart301901(arg1)
    print("OnSubStart301901")
end

function Quest3019:OnSubFinish301901(arg1)
    print("OnSubFinish301901")
end

return Quest3019
