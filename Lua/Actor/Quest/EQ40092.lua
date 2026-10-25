require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40092 = class("Quest40092", QuestActorProxy)
Quest40092.defaultAlias = "Quest40092"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40092:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40092:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009201"] = self.OnSubStart4009201,
        ["4009203"] = self.OnSubStart4009203,
        ["4009202"] = self.OnSubStart4009202,
        ["4009217"] = self.OnSubStart4009217,
        ["4009218"] = self.OnSubStart4009218,
        ["4009219"] = self.OnSubStart4009219,
        ["4009204"] = self.OnSubStart4009204,
        ["4009205"] = self.OnSubStart4009205,
        ["4009206"] = self.OnSubStart4009206,
        ["4009223"] = self.OnSubStart4009223,
        ["4009207"] = self.OnSubStart4009207,
        ["4009208"] = self.OnSubStart4009208,
        ["4009209"] = self.OnSubStart4009209,
        ["4009222"] = self.OnSubStart4009222,
        ["4009220"] = self.OnSubStart4009220,
        ["4009221"] = self.OnSubStart4009221,
        ["4009210"] = self.OnSubStart4009210,
        ["4009211"] = self.OnSubStart4009211,
        ["4009212"] = self.OnSubStart4009212,
        ["4009213"] = self.OnSubStart4009213,
        ["4009214"] = self.OnSubStart4009214,
        ["4009215"] = self.OnSubStart4009215,
        ["4009216"] = self.OnSubStart4009216
    }
end

function Quest40092:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009201"] = self.OnSubFinish4009201,
        ["4009203"] = self.OnSubFinish4009203,
        ["4009202"] = self.OnSubFinish4009202,
        ["4009217"] = self.OnSubFinish4009217,
        ["4009218"] = self.OnSubFinish4009218,
        ["4009219"] = self.OnSubFinish4009219,
        ["4009204"] = self.OnSubFinish4009204,
        ["4009205"] = self.OnSubFinish4009205,
        ["4009206"] = self.OnSubFinish4009206,
        ["4009223"] = self.OnSubFinish4009223,
        ["4009207"] = self.OnSubFinish4009207,
        ["4009208"] = self.OnSubFinish4009208,
        ["4009209"] = self.OnSubFinish4009209,
        ["4009222"] = self.OnSubFinish4009222,
        ["4009220"] = self.OnSubFinish4009220,
        ["4009221"] = self.OnSubFinish4009221,
        ["4009210"] = self.OnSubFinish4009210,
        ["4009211"] = self.OnSubFinish4009211,
        ["4009212"] = self.OnSubFinish4009212,
        ["4009213"] = self.OnSubFinish4009213,
        ["4009214"] = self.OnSubFinish4009214,
        ["4009215"] = self.OnSubFinish4009215,
        ["4009216"] = self.OnSubFinish4009216
    }
end

function Quest40092:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4009218"] = self.OnSubFailed4009218, ["4009214"] = self.OnSubFailed4009214}
end

function Quest40092:Start()
    print("Start")
end

function Quest40092:OnDestroy()
    print("OnDestroy")
end

function Quest40092:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40092:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40092:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1066Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12968Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13020Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13022Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2034Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    local actor = actorMgr:GetActor("40092")
    actor:UnSpawn(gadgets.Gadget70710973Data.alias)
    actor:UnSpawn(gadgets.Gadget70710974Data.alias)
    actor:UnSpawn(gadgets.Gadget70710975Data.alias)
    actorMgr:DestroyEntityActor("Q40092Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q40092Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q40092Trigger2", 0, false)
    actorMgr:DestroyEntityActor("Q40092Trigger3", 0, false)
    actorMgr:DestroyEntityActor("Q40092Trigger4", 0, false)
    actorMgr:DestroyEntityActor("Q4009214FailTrigger", 0, false)
    actorMgr:DestroyEntityActor("Q4009218FailTrigger", 3, false)
    actorMgr:DestroyEntityActor("4009201", 3, false)
    actorMgr:DestroyEntityActor("Q4009204N1042Trigger", 3, false)
    actorMgr:DestroyEntityActor("4009205", 3, false)
    actorMgr:DestroyEntityActor("Q4009206N1015Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009207N1016Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009208N2143Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009209N1048Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009210N1048Trigger", 3, false)
    actorMgr:DestroyEntityActor("4009212", 3, false)
    actorMgr:DestroyEntityActor("Q4009213N12968Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009215N12968Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009216N2143Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009217N12966Trigger", 3, false)
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
end

function Quest40092:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40092:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest40092:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest40092:OnSubStart4009201(arg1)
    print("OnSubStart4009201")
    this:DailyNpcSafeHideSelf(npcs.Npc2035Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("4009201", 4009201, 10232, 1, 20)
    this:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(0)
    self:ActionSafeCall(function(arg1)
        if arg1.GetQuestVar(arg1, 4009201, 4) == 0 then
            arg1.NarratorOnlyTaskByData(arg1, datas.NarratorWithId1, function()
                arg1:SetQuestVar(4009201, 4, 1)
            end)
        end
    end)
end

function Quest40092:OnSubFinish4009201(arg1)
    print("OnSubFinish4009201")
end

function Quest40092:OnSubStart4009203(arg1)
    print("OnSubStart4009203")
    actorMgr:CreateActorWithPos("Q40092Trigger2", "Actor/Gadget/Q40092Trigger2", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009203_guide").pos, sceneData:GetDummyPoint(3, "Q4009203_guide").rot, true, false)
    this:ClearNarratorTask()
    actorMgr:GetActor(npcs.Npc10232Data.alias)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc10232Data.alias)
    questNpcActor:SitOnChair(0)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc2035Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2034Data.alias, 1, true)
end

function Quest40092:OnSubFinish4009203(arg1)
    print("OnSubFinish4009203")
    this:LightNotifyTo(npcs.Npc2035Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2034Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
end

function Quest40092:OnSubStart4009202(arg1)
    print("OnSubStart4009202")
    actorMgr:CreateActorWithPos("Q40092Trigger3", "Actor/Gadget/Q40092Trigger3", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009202_T4009202_N1066").pos, sceneData:GetDummyPoint(3, "Q4009202_T4009202_N1066").rot, true, false)
    self:ActionSafeCall(function(arg1)
        if arg1.GetQuestVar(arg1, 4009203, 3) == 0 then
            arg1.NarratorOnlyTaskByData(arg1, datas.NarratorWithId3, function()
                arg1:SetQuestVar(4009203, 3, 1)
            end)
        end
    end)
end

function Quest40092:OnSubFinish4009202(arg1)
    print("OnSubFinish4009202")
    this:SafeDestroyQuestNpc(npcs.Npc1066Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
    this:ClearNarratorTask()
end

function Quest40092:OnSubStart4009217(arg1)
    print("OnSubStart4009217")
    this:NpcCreateWithTriggerBlack(npcs.Npc12966Data.id, 4009217, 1)
end

function Quest40092:OnSubFinish4009217(arg1)
    print("OnSubFinish4009217")
end

function Quest40092:OnSubStart4009218(arg1)
    print("OnSubStart4009218")
    actorMgr:CreateActorWithPos("Q40092Trigger", "Actor/Gadget/Q40092Trigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009204_T4009204_N1042_guide").pos, sceneData:GetDummyPoint(3, "Q4009204_T4009204_N1042_guide").rot, true, false)
    this:ActionSafeCall(function(arg1_2)
        arg1_2:ActionSafeCall(function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12966Data.id, 1)
            arg1_2:GetQuestNpcActor(npcs.Npc12966Data.alias):NpcFollowTaskWithParams(1, nil, nil, function(arg1) end, "", false, 0.5, 5, 2, 25, 30, 50, 3, 5)
        end)

        arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
        actorMgr:CreateActorWithPos("Q4009218FailTrigger", "Actor/Gadget/Q4009218FailTrigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009219_guide").pos, sceneData:GetDummyPoint(3, "Q4009219_guide").rot, true, false, 3)
        this:NarratorOnlyTaskByData(datas.NarratorWithId4)
    end)
end

function Quest40092:OnSubFinish4009218(arg1)
    print("OnSubFinish4009218")
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4009218FailTrigger", 3, false)
end

function Quest40092:OnSubFailed4009218(arg1)
    print("OnSubFailed4009218")
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
    this:ClearNarratorTask()
    actorMgr:DestroyEntityActor("Q4009218FailTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q40092Trigger", 3, false)
end

function Quest40092:OnSubStart4009219(arg1)
    print("OnSubStart4009219")
    actorMgr:CreateActorWithPos("Q40092Trigger1", "Actor/Gadget/Q40092Trigger1", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009219_guide").pos, sceneData:GetDummyPoint(3, "Q4009219_guide").rot, true, false)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12966Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12966Data.alias):NpcFollowTaskWithParams(1, nil, nil, function(arg1)
            arg1:DoFreeStyle(1190, true, nil, true, true, false)
        end, "", false, 0.5, 5, 2, 25, 30, 50, 3, 5)
    end)
end

function Quest40092:OnSubFinish4009219(arg1)
    print("OnSubFinish4009219")
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
end

function Quest40092:OnSubStart4009204(arg1)
    print("OnSubStart4009204")
    this:CreateQuestNpcWithTrigger("Q4009204N1042Trigger", 4009204, npcs.Npc1042Data.id, 1, 10)
end

function Quest40092:OnSubFinish4009204(arg1)
    print("OnSubFinish4009204")
    this:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId5)
    end)
end

function Quest40092:OnSubStart4009205(arg1)
    print("OnSubStart4009205")
    this:CreateQuestNpcWithTrigger("4009205", 4009205, 2093, 1, 7)
end

function Quest40092:OnSubFinish4009205(arg1)
    print("OnSubFinish4009205")
end

function Quest40092:OnSubStart4009206(arg1)
    print("OnSubStart4009206")
    this:NpcCreateWithTrigger(npcs.Npc1015Data.id, 4009206, 1)
    this:CreateQuestNpc(arg1, npcs.Npc2140Data.id, 2)
end

function Quest40092:OnSubFinish4009206(arg1)
    print("OnSubFinish4009206")
    this:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2140Data.alias, 3)
end

function Quest40092:OnSubStart4009223(arg1)
    print("OnSubStart4009223")
    this:CreateQuestNpc(arg1, npcs.Npc12966Data.id, 3)
end

function Quest40092:OnSubFinish4009223(arg1)
    print("OnSubFinish4009223")
end

function Quest40092:OnSubStart4009207(arg1)
    print("OnSubStart4009207")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithTriggerBlack(npcs.Npc1016Data.id, 4009207, 2)
    end)
end

function Quest40092:OnSubFinish4009207(arg1)
    print("OnSubFinish4009207")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId6)
        this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    end)
end

function Quest40092:OnSubStart4009208(arg1)
    print("OnSubStart4009208")
    this:NpcCreateWithTriggerBlack(npcs.Npc2143Data.id, 4009208, 2)
end

function Quest40092:OnSubFinish4009208(arg1)
    print("OnSubFinish4009208")
    this:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
end

function Quest40092:OnSubStart4009209(arg1)
    print("OnSubStart4009209")
    this:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12966Data.id, 2)
    this:NpcCreateWithTriggerBlack(npcs.Npc1048Data.id, 4009209, 3)
    this:GetQuestNpcActor(npcs.Npc12966Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1016Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40092:OnSubFinish4009209(arg1)
    print("OnSubFinish4009209")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12966Data.alias, 3)
end

function Quest40092:OnSubStart4009222(arg1)
    print("OnSubStart4009222")
    this:CreateQuestNpc(arg1, npcs.Npc13022Data.id, 2)
    this:SpawnGadget(arg1, gadgets.Gadget70710973Data.id, 1)
end

function Quest40092:OnSubFinish4009222(arg1)
    print("OnSubFinish4009222")
    this:SafeDestroyQuestNpc(npcs.Npc13022Data.alias, 3)
    this:UnSpawn(gadgets.Gadget70710973Data.alias)
end

function Quest40092:OnSubStart4009220(arg1)
    print("OnSubStart4009220")
    this:CreateQuestNpc(arg1, npcs.Npc13020Data.id, 2)
    this:SpawnGadget(arg1, gadgets.Gadget70710974Data.id, 1)
end

function Quest40092:OnSubFinish4009220(arg1)
    print("OnSubFinish4009220")
    this:SafeDestroyQuestNpc(npcs.Npc13020Data.alias, 3)
    this:UnSpawn(gadgets.Gadget70710974Data.alias)
end

function Quest40092:OnSubStart4009221(arg1)
    print("OnSubStart4009221")
    this:CreateQuestNpc(arg1, npcs.Npc13021Data.id, 2)
    this:SpawnGadget(arg1, gadgets.Gadget70710975Data.id, 1)
end

function Quest40092:OnSubFinish4009221(arg1)
    print("OnSubFinish4009221")
    this:SafeDestroyQuestNpc(npcs.Npc13021Data.alias, 3)
    this:UnSpawn(gadgets.Gadget70710975Data.alias)
end

function Quest40092:OnSubStart4009210(arg1)
    print("OnSubStart4009210")
    this:NpcCreateWithTriggerBlack(npcs.Npc1048Data.id, 4009210, 1)
end

function Quest40092:OnSubFinish4009210(arg1)
    print("OnSubFinish4009210")
end

function Quest40092:OnSubStart4009211(arg1)
    print("OnSubStart4009211")
    this:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1048Data.alias, 40092)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 10, 4, -1, function(arg1)
        this:GetQuestNpcActor(npcs.Npc1048Data.alias, 40092)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1048Data.alias)
        questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q4009211_route10").rot))
        questNpcActor:DoFreeStyle(1280, true, 0, true, true, false, false)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc1048Data.alias, 40092)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 10, 4, -1, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1048Data.alias, 40092)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1048Data.alias)
                questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q4009211_route").rot))
                questNpcActor:DoFreeStyle(1280, true, 0, true, true, false, false)
                this:NarratorOnlyTaskByData(datas.NarratorWithId8, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1048Data.alias, 40092)
                    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 10, 4, -1, function(arg1)
                        if arg1.BeFollowState == BeFollowState.SUCCESS then
                            actorUtils.FinishQuestID(false, 4009211)
                        end
                    end, nil, nil, function(arg1)
                        arg1:TryPauseCurAutoNarrator()
                        arg1:Standby()
                        arg1:DisableInteeHeadCtrl(false)
                        local avatarPos = actorUtils.GetAvatarPos()
                        local pos = arg1:GetPos()
                        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                        arg1:SteerToAutonomyTask(tbl, 1, true, true)
                    end, function(arg1)
                        arg1:ClearSteerToAutonomyTask()
                        arg1:TryResumeCurAutoNarrator()
                        arg1:DisableInteeHeadCtrl(true)
                        arg1:ResumeMove()
                    end, nil, false)
                end)
            end, nil, nil, function(arg1)
                arg1:TryPauseCurAutoNarrator()
                arg1:Standby()
                arg1:DisableInteeHeadCtrl(false)
                local avatarPos = actorUtils.GetAvatarPos()
                local pos = arg1:GetPos()
                local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
                arg1:SteerToAutonomyTask(tbl, 1, true, true)
            end, function(arg1)
                arg1:ClearSteerToAutonomyTask()
                arg1:TryResumeCurAutoNarrator()
                arg1:DisableInteeHeadCtrl(true)
                arg1:ResumeMove()
            end, nil, false)
        end)
    end, nil, nil, function(arg1)
        arg1:TryPauseCurAutoNarrator()
        arg1:Standby()
        arg1:DisableInteeHeadCtrl(false)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = arg1:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        arg1:SteerToAutonomyTask(tbl, 1, true, true)
    end, function(arg1)
        arg1:ClearSteerToAutonomyTask()
        arg1:TryResumeCurAutoNarrator()
        arg1:DisableInteeHeadCtrl(true)
        arg1:ResumeMove()
    end, nil, false)
end

function Quest40092:OnSubFinish4009211(arg1)
    print("OnSubFinish4009211")
end

function Quest40092:OnSubStart4009212(arg1)
    print("OnSubStart4009212")
    this:CreateQuestNpcWithTrigger("4009212", 4009212, 1048, 1, 20)
end

function Quest40092:OnSubFinish4009212(arg1)
    print("OnSubFinish4009212")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest40092:OnSubStart4009213(arg1)
    print("OnSubStart4009213")
    this:NpcCreateWithTrigger(npcs.Npc12968Data.id, 4009213, 1)
    actorMgr:DestroyEntityActor("Q4009214FailTrigger", 3, false)
end

function Quest40092:OnSubFinish4009213(arg1)
    print("OnSubFinish4009213")
    this:SafeDestroyQuestNpc(npcs.Npc12968Data.alias, 3)
end

function Quest40092:OnSubStart4009214(arg1)
    print("OnSubStart4009214")
    actorMgr:CreateActorWithPos("Q4009214FailTrigger", "Actor/Gadget/Q4009214FailTrigger", 70900002, 1, sceneData:GetDummyPoint(3, "Q4009212_T4009212_N12968").pos, sceneData:GetDummyPoint(3, "Q4009212_T4009212_N12968").rot, true, false)
end

function Quest40092:OnSubFinish4009214(arg1)
    print("OnSubFinish4009214")
    this:TransmitPlayerByQuestId(4009214, 1)
    actorMgr:DestroyEntityActor("Q4009214FailTrigger", 3, false)
end

function Quest40092:OnSubFailed4009214(arg1)
    print("OnSubFailed4009214")
    actorMgr:DestroyEntityActor("Q4009214FailTrigger", 3, false)
end

function Quest40092:OnSubStart4009215(arg1)
    print("OnSubStart4009215")
    this:NpcCreateWithTriggerBlack(npcs.Npc12968Data.id, 4009215, 1)
end

function Quest40092:OnSubFinish4009215(arg1)
    print("OnSubFinish4009215")
    this:SafeDestroyQuestNpc(npcs.Npc12968Data.alias, 3)
end

function Quest40092:OnSubStart4009216(arg1)
    print("OnSubStart4009216")
    this:NpcCreateWithTrigger(npcs.Npc2143Data.id, 4009216, 1)
end

function Quest40092:OnSubFinish4009216(arg1)
    print("OnSubFinish4009216")
    this:SafeDestroyQuestNpc(npcs.Npc2143Data.alias, 3)
    self.AfterMainPageActiveSafeCall(self, function()
        self:CallDelay(0.1, function()
            self:ActionSafeCall(function()
                actorUtils.ShowContext("OpenLanV3MainPage")
            end)
        end)
    end)
end

return Quest40092
