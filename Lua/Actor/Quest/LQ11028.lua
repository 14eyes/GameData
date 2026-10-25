require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11028 = class("Quest11028", QuestActorProxy)
Quest11028.defaultAlias = "Quest11028"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11028:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102801"] = self.OnSubStart1102801,
        ["1102802"] = self.OnSubStart1102802,
        ["1102803"] = self.OnSubStart1102803,
        ["1102804"] = self.OnSubStart1102804,
        ["1102811"] = self.OnSubStart1102811,
        ["1102805"] = self.OnSubStart1102805,
        ["1102806"] = self.OnSubStart1102806,
        ["1102807"] = self.OnSubStart1102807,
        ["1102808"] = self.OnSubStart1102808,
        ["1102809"] = self.OnSubStart1102809,
        ["1102810"] = self.OnSubStart1102810
    }
end

function Quest11028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102801"] = self.OnSubFinish1102801,
        ["1102802"] = self.OnSubFinish1102802,
        ["1102803"] = self.OnSubFinish1102803,
        ["1102804"] = self.OnSubFinish1102804,
        ["1102811"] = self.OnSubFinish1102811,
        ["1102805"] = self.OnSubFinish1102805,
        ["1102806"] = self.OnSubFinish1102806,
        ["1102807"] = self.OnSubFinish1102807,
        ["1102808"] = self.OnSubFinish1102808,
        ["1102809"] = self.OnSubFinish1102809,
        ["1102810"] = self.OnSubFinish1102810
    }
end

function Quest11028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest11028:Start()
    print("Start")
end

function Quest11028:OnDestroy()
    print("OnDestroy")
end

function Quest11028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11028:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11028:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11028:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest11028:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest11028:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest11028:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc13135Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
            this:GetQuestNpcActor(npcs.Npc13136Data.alias):DisableInteeHeadCtrl(true)
        end)
    end
end

function Quest11028:BAIWalkToPoint3()
    print("BAIWalkToPoint3")
    this:NpcWalkToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), datas.BAIWalkToPoint3, function(arg1)
        this:SetQuestVarByMainId(1, 3)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1068Data.alias)
        questNpcActor:EnableInteractionWithUI(true)
        local tbl = {x = 1759.253, y = 210.146, z = 946.486}
        local pos = questNpcActor:GetPos()
        local v = {x = tbl.x - pos.x, y = tbl.y - pos.y, z = tbl.z - pos.z}
        questNpcActor:SteerToAutonomyTask(v, 1, true, true)
        if this:GetQuestVar(1102811, 0) == 2 then
            this:CallDelay(2, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1068Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
            end)
        else
            this:BaizhuInvestigate()
        end
    end)
end

function Quest11028:BAIWalkToPoint2()
    print("BAIWalkToPoint2")
    this:NpcWalkToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), datas.BAIWalkToPoint2, function(arg1)
        this:SetQuestVarByMainId(1, 2)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1068Data.alias)
        questNpcActor:EnableInteractionWithUI(true)
        local tbl = {x = 1752.98, y = 210.2492, z = 939.769}
        local pos = questNpcActor:GetPos()
        local v = {x = tbl.x - pos.x, y = tbl.y - pos.y, z = tbl.z - pos.z}
        questNpcActor:SteerToAutonomyTask(v, 1, true, true)
        if this:GetQuestVar(1102811, 0) == 1 then
            this:CallDelay(2, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1068Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
            end)
        else
            this:BaizhuInvestigate()
        end
    end)

    self:UnCallFunc(self.CallDelay)
end

function Quest11028:BAIWalkToPoint1()
    print("BAIWalkToPoint1")
    this:GetQuestNpcActor(npcs.Npc1068Data.alias):WalkToTask(sceneData:GetDummyPoint(3, "Q1102811_Baizhu_1").pos, function(arg1)
        this:SetQuestVarByMainId(1, 1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1068Data.alias)
        questNpcActor:EnableInteractionWithUI(true)
        local tbl = {x = 1752.582, y = 210.2492, z = 933.4053}
        local pos = questNpcActor:GetPos()
        local v = {x = tbl.x - pos.x, y = tbl.y - pos.y, z = tbl.z - pos.z}
        questNpcActor:SteerToAutonomyTask(v, 1, true, true)
        if this:GetQuestVar(1102811, 0) == 0 then
            this:CallDelay(2, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1068Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
            end)
        else
            this:BaizhuInvestigate()
        end
    end)
end

function Quest11028:BaizhuInvestigate()
    print("BaizhuInvestigate")
    this:AfterMainPageActiveSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1068Data.alias)
        questNpcActor:DoFreeStateTrigger()
        this:CallDelay(1.5, function(arg1)
            this:ActionSafeCall(function(arg1)
                if this:GetSubQuestState(1102805) == 2 then
                    this:BAIWalkToPoint4()
                else
                    if this:GetQuestVar(1102801, 0) == 0 then
                        this:BAIWalkToPoint1()
                    else
                        if this:GetQuestVar(1102801, 0) == 1 then
                            if this:GetQuestVar(1102801, 1) == 0 then
                                this:BAIWalkToPoint1()
                            else
                                if this:GetQuestVar(1102801, 1) == 1 then
                                    this:BAIWalkToPoint2()
                                end
                            end
                        else
                            if this:GetQuestVar(1102801, 0) == 2 then
                                if this:GetQuestVar(1102801, 1) == 0 then
                                    this:BAIWalkToPoint1()
                                else
                                    if this:GetQuestVar(1102801, 1) == 1 then
                                        this:BAIWalkToPoint2()
                                    else
                                        if this:GetQuestVar(1102801, 1) == 2 then
                                            this:BAIWalkToPoint3()
                                        end
                                    end
                                end
                            else
                                if this:GetQuestVar(1102801, 0) == 3 then
                                    this:BAIWalkToPoint4()
                                end
                            end
                        end
                    end

                    this:GetQuestNpcActor(npcs.Npc1068Data.alias):EnableInteractionWithUI(false)
                end
            end)
        end)

        questNpcActor:EnableInteractionWithUI(false)
    end)
end

function Quest11028:BAIWalkToPoint4()
    print("BAIWalkToPoint4")
    if this:GetQuestVar(1102801, 1) == 0 then
        this:NpcWalkToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), datas.BAIWalkToPoint0_4, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1068Data.alias):EnableInteractionWithUI(true)
            this:RequestInteraction(npcs.Npc1068Data.alias)
        end)
    else
        if this:GetQuestVar(1102801, 1) == 1 then
            this:NpcWalkToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), datas.BAIWalkToPoint1_4, function(arg1)
                this:GetQuestNpcActor(npcs.Npc1068Data.alias):EnableInteractionWithUI(true)
                this:RequestInteraction(npcs.Npc1068Data.alias)
            end)
        else
            if this:GetQuestVar(1102801, 1) == 2 then
                this:NpcWalkToRouteTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), datas.BAIWalkToPoint2_4, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc1068Data.alias):EnableInteractionWithUI(true)
                    this:RequestInteraction(npcs.Npc1068Data.alias)
                end)
            else
                if this:GetQuestVar(1102801, 1) == 3 then
                    this:NpcWalkToTaskEasy(this:GetQuestNpcActor(npcs.Npc1068Data.alias, 11028), sceneData:GetDummyPoint(3, "Q1102811_Baizhu_4").pos, function(arg1)
                        this:GetQuestNpcActor(npcs.Npc1068Data.alias):EnableInteractionWithUI(true)
                        this:RequestInteraction(npcs.Npc1068Data.alias)
                    end)
                end
            end
        end
    end
end

function Quest11028:OnSubStart1102801(arg1)
    print("OnSubStart1102801")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2103Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13136Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13135Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1021Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:CreateQuestNpcWithTriggerBlack("Q1102801_Trigger", 1102801, npcs.Npc1068Data.id, 1, 10, 1)
    this:GetQuestNpcActor(npcs.Npc13135Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)

    this:RemoveLocalGadget(70711025, "0")
    this:RemoveLocalGadget(70711025, "1")
    this:RemoveLocalGadget(70711025, "2")
end

function Quest11028:OnSubFinish1102801(arg1)
    print("OnSubFinish1102801")
    this:SetQuestVarByMainId(0, 0)
    this:SetQuestVarByMainId(1, 0)
    this:GetQuestNpcActor(npcs.Npc13135Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13135Data.alias, 3)
end

function Quest11028:OnSubStart1102802(arg1)
    print("OnSubStart1102802")
    this:CreateQuestNpc(arg1, npcs.Npc13138Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13139Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13140Data.id, 0, false, 0)
    this:CreateLocalGadget(70711025, "0", {x = 1751.467, y = 211.049, z = 938.963}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, 0, false)
end

function Quest11028:OnSubFinish1102802(arg1)
    print("OnSubFinish1102802")
    local questVar = this:GetQuestVar(1102802, 0)
    this:SetQuestVarByMainId(0, questVar + 1)
    this:BaizhuInvestigate()
    this:RemoveLocalGadget(70711025, "0")
end

function Quest11028:OnSubStart1102803(arg1)
    print("OnSubStart1102803")
    this:CreateLocalGadget(70711025, "1", {x = 1761.607, y = 210.758, z = 943.024}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, 0, false)
end

function Quest11028:OnSubFinish1102803(arg1)
    print("OnSubFinish1102803")
    local questVar = this:GetQuestVar(1102803, 0)
    this:SetQuestVarByMainId(0, questVar + 1)
    this:BaizhuInvestigate()
    this:RemoveLocalGadget(70711025, "1")
end

function Quest11028:OnSubStart1102804(arg1)
    print("OnSubStart1102804")
    this:CreateLocalGadget(70711025, "2", {x = 1765.036, y = 210.212, z = 933.761}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, 0, false)
end

function Quest11028:OnSubFinish1102804(arg1)
    print("OnSubFinish1102804")
    local questVar = this:GetQuestVar(1102804, 0)
    this:SetQuestVarByMainId(0, questVar + 1)
    this:BaizhuInvestigate()
    this:RemoveLocalGadget(70711025, "2")
end

function Quest11028:OnSubStart1102811(arg1)
    print("OnSubStart1102811")
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:BaizhuInvestigate()
    end)

    this:GetQuestNpcActor(npcs.Npc1068Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest11028:OnSubFinish1102811(arg1)
    print("OnSubFinish1102811")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1102801, nil, 11028)
    end)

    this:GetQuestNpcActor(npcs.Npc1068Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13138Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13139Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13140Data.alias, 3)
end

function Quest11028:OnSubStart1102805(arg1)
    print("OnSubStart1102805")
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest11028:OnSubFinish1102805(arg1)
    print("OnSubFinish1102805")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
end

function Quest11028:OnSubStart1102806(arg1)
    print("OnSubStart1102806")
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc10233Data.id, 1102806, 0, 13)
    this:CreateQuestNpc(arg1, npcs.Npc13136Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13135Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest11028:OnSubFinish1102806(arg1)
    print("OnSubFinish1102806")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1102802, nil, 11028)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
end

function Quest11028:OnSubStart1102807(arg1)
    print("OnSubStart1102807")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2103Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc10233Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13135Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13135Data.alias)
        questNpcActor:DoFreeStyle(5030, true, nil, true, true, false, false)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)

    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest11028:OnSubFinish1102807(arg1)
    print("OnSubFinish1102807")
    this:GetQuestNpcActor(npcs.Npc13135Data.alias):ForceFinishEmoSync(0)
    this:GetQuestNpcActor(npcs.Npc13136Data.alias):DisableInteeHeadCtrl(true)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
end

function Quest11028:OnSubStart1102808(arg1)
    print("OnSubStart1102808")
    this:DailyNpcSafeHideSelf(npcs.Npc2103Data.alias, 1, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13136Data.id, 1102808, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc2068Data.alias, 1, true)
    if sceneData.currSceneID == 1082 then
        this:AfterMainPageActiveSafeCall(function(arg1_2)
            this:LevelLoadFinishSafeCall(function(arg1_2)
                this:TransmitPlayerWithDialogTextById(arg1, 2, datas.TransmitBlank, 1, nil, nil)
            end)
        end)
    end

    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest11028:OnSubFinish1102808(arg1)
    print("OnSubFinish1102808")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, nil)
    this:NPCDestroyImmediately(npcs.Npc2103Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc13136Data.alias, 3)
    this:NPCDestroyImmediately(npcs.Npc13135Data.alias, 3)
end

function Quest11028:OnSubStart1102809(arg1)
    print("OnSubStart1102809")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1068Data.id, 1102809, 0, 10, 1)
    this:LightNotifyTo(npcs.Npc2068Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest11028:OnSubFinish1102809(arg1)
    print("OnSubFinish1102809")
end

function Quest11028:OnSubStart1102810(arg1)
    print("OnSubStart1102810")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1068Data.id, 1102810, 0, 10, 1)
    if sceneData.currSceneID == 1082 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, function(arg1)
                this:RequestInteraction(npcs.Npc1068Data.alias)
            end)
        end)
    end

    this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest11028:OnSubFinish1102810(arg1)
    print("OnSubFinish1102810")
    this:SafeDestroyQuestNpc(npcs.Npc1068Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13136Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
end

return Quest11028
