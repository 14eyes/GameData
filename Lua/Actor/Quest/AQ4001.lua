require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4001 = class("Quest4001", QuestActorProxy)
Quest4001.defaultAlias = "Quest4001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400105"] = self.OnSubStart400105,
        ["400101"] = self.OnSubStart400101,
        ["400102"] = self.OnSubStart400102,
        ["400112"] = self.OnSubStart400112,
        ["400103"] = self.OnSubStart400103,
        ["400104"] = self.OnSubStart400104,
        ["400115"] = self.OnSubStart400115,
        ["400116"] = self.OnSubStart400116,
        ["400113"] = self.OnSubStart400113,
        ["400114"] = self.OnSubStart400114,
        ["400106"] = self.OnSubStart400106,
        ["400107"] = self.OnSubStart400107,
        ["400108"] = self.OnSubStart400108,
        ["400109"] = self.OnSubStart400109,
        ["400110"] = self.OnSubStart400110,
        ["400111"] = self.OnSubStart400111
    }
end

function Quest4001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400105"] = self.OnSubFinish400105,
        ["400101"] = self.OnSubFinish400101,
        ["400102"] = self.OnSubFinish400102,
        ["400112"] = self.OnSubFinish400112,
        ["400103"] = self.OnSubFinish400103,
        ["400104"] = self.OnSubFinish400104,
        ["400115"] = self.OnSubFinish400115,
        ["400116"] = self.OnSubFinish400116,
        ["400113"] = self.OnSubFinish400113,
        ["400114"] = self.OnSubFinish400114,
        ["400106"] = self.OnSubFinish400106,
        ["400107"] = self.OnSubFinish400107,
        ["400108"] = self.OnSubFinish400108,
        ["400109"] = self.OnSubFinish400109,
        ["400110"] = self.OnSubFinish400110,
        ["400111"] = self.OnSubFinish400111
    }
end

function Quest4001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4001:Start()
    print("Start")
end

function Quest4001:OnDestroy()
    print("OnDestroy")
end

function Quest4001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4001:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest4001:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4001:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4001:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest4001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest4001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            this:TransmitPlayerWithDialogTextByQuestId(400104, 1, datas.TransmitBlank, 1)
        end)
    elseif arg1 == 1 then
        this:SetQuestVarByMainId(0, 1)
        print("\229\143\152\233\135\143\230\148\185\229\143\1524001")
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 400115)
    elseif arg1 == 3 then
        this:UnCallDelayByQuest("400106TriggerFreestyle")
        this:UnCallDelayByQuest("400106TriggerRequest")
    end
end

function Quest4001:NaviaShipShow()
    print("NaviaShipShow")
    local actor = actorMgr:GetActor("4001")
    local questVar = actor:GetQuestVar(400116, 0)
    if questVar == 0 then
        this:CreateQuestNpcById(400116, npcs.Npc1075Data.id, 1)
        this:RequestInteraction(npcs.Npc1075Data.alias)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):EnableInteractionWithUI(true)
    elseif questVar == 1 then
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1075Data.alias, 4001)
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = questNpcActor:GetPos()
        local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
        questNpcActor:SteerToAutonomyTask(tbl, 1, true, true)
        actor:CallDelayByQuest("400106TriggerFreestyle", 1.5, function(arg1)
            this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
            actorMgr:GetActor("4001"):CallDelayByQuest("400106TriggerRequest", 2.5, function(arg1)
                this:RequestInteraction(npcs.Npc1075Data.alias)
                this:GetQuestNpcActor(npcs.Npc1075Data.alias):EnableInteractionWithUI(true)
            end)
        end)

        this:EnterSceneLookCamera({x = 2711.442, y = 400.248, z = 4228.662}, 0, 3, true, false)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):EnableInteractionWithUI(false)
    end
end

function Quest4001:OnSubStart400105(arg1)
    print("OnSubStart400105")
end

function Quest4001:OnSubFinish400105(arg1)
    print("OnSubFinish400105")
end

function Quest4001:OnSubStart400101(arg1)
    print("OnSubStart400101")
    if this:GetQuestGlobalVar(400101) == 0 then
        actorMgr:CreateActorWithPos("Q400101_Trigger", "Actor/Gadget/Q400101_Trigger", 70900002, 0, points.TPos_Q400101_Trigger.pos, points.TPos_Q400101_Trigger.rot, true, false, 3)
    end
end

function Quest4001:OnSubFinish400101(arg1)
    print("OnSubFinish400101")
    this:ActorDestroy("Q400101_Trigger")
end

function Quest4001:OnSubStart400102(arg1)
    print("OnSubStart400102")
    this:NpcCreateWithNpcTrigger(npcs.Npc5087Data.id, 400102, 0, 50)
    actorMgr:CreateActorWithPos("Q400102_NarratorTrigger", "Actor/Gadget/Q400102_NarratorTrigger", 70900002, 0, {x = 3578.087, y = 511.615, z = 4589.644}, {x = 0.0, y = 45.0, z = 0.0}, true, false, 3)
end

function Quest4001:OnSubFinish400102(arg1)
    print("OnSubFinish400102")
    if actorMgr:GetActor("Q400102_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q400102_NarratorTrigger")
    end

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 1083)
    this:SafeDestroyQuestNpc(npcs.Npc5087Data.alias, 1083)
end

function Quest4001:OnSubStart400112(arg1)
    print("OnSubStart400112")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(8010)
end

function Quest4001:OnSubFinish400112(arg1)
    print("OnSubFinish400112")
    this:CallDelayByQuest("NevDoorOpen", 1, function(arg1)
        if sceneData.currSceneID == 1083 then
            this:NarratorOnlyTaskByData(datas.Narrator_400103, nil, 4001)
        end
    end)
end

function Quest4001:OnSubStart400103(arg1)
    print("OnSubStart400103")
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(8010)
    actorMgr:CreateActorWithPos("Q400103_Trigger", "Actor/Gadget/Q400103_Trigger", 70900002, 0, {x = -41.474, y = 0.352, z = -15.672}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1083)
end

function Quest4001:OnSubFinish400103(arg1)
    print("OnSubFinish400103")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 1083)
    this:NPCDestroyImmediately(npcs.Npc1076Data.alias, 1083)
end

function Quest4001:OnSubStart400104(arg1)
    print("OnSubStart400104")
    actorMgr:CreateActorWithPos("Q400104_Trigger", "Actor/Gadget/Q400104_Trigger", 70900002, 0, points.TPos_Q400104_Trigger.pos, points.TPos_Q400104_Trigger.rot, true, false, 3)
    if sceneData.currSceneID == 1083 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:TransmitPlayerWithDialogTextByQuestId(400104, 2, datas.TransmitBlank, 1)
        end)
    end

    this:NotifyTo(npcs.Npc5002Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5044Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5003Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5081Data.alias, 1, true)
end

function Quest4001:OnSubFinish400104(arg1)
    print("OnSubFinish400104")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4001:OnSubStart400115(arg1)
    print("OnSubStart400115")
end

function Quest4001:OnSubFinish400115(arg1)
    print("OnSubFinish400115")
end

function Quest4001:OnSubStart400116(arg1)
    print("OnSubStart400116")
    this:DailyNpcSafeHideSelf(npcs.Npc5002Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5081Data.alias, 1, true)
    if this:GetQuestVar(400116, 0) == 1 then
        this:ActionSafeCall(function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 1)
        end)
    end

    actorMgr:CreateActorWithPos("Q400106_Trigger", "Actor/Gadget/Q400106_Trigger", 70900002, 0, points.TPos_Q400106_Trigger.pos, points.TPos_Q400106_Trigger.rot, true, false, 3)
end

function Quest4001:OnSubFinish400116(arg1)
    print("OnSubFinish400116")
end

function Quest4001:OnSubStart400113(arg1)
    print("OnSubStart400113")
end

function Quest4001:OnSubFinish400113(arg1)
    print("OnSubFinish400113")
end

function Quest4001:OnSubStart400114(arg1)
    print("OnSubStart400114")
    this:DailyNpcSafeHideSelf(npcs.Npc5002Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5081Data.alias, 1, true)
    this:NaviaShipShow()
end

function Quest4001:OnSubFinish400114(arg1)
    print("OnSubFinish400114")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4001:OnSubStart400106(arg1)
    print("OnSubStart400106")
    this:NpcCreateWithNpcTrigger(npcs.Npc13311Data.id, 400106, 0, 5)
    this:LightNotifyTo(npcs.Npc5002Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5044Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5003Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5081Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc13311Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest4001:OnSubFinish400106(arg1)
    print("OnSubFinish400106")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
end

function Quest4001:OnSubStart400107(arg1)
    print("OnSubStart400107")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13311Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13321Data.id, 400107, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc13399Data.id, 0)
end

function Quest4001:OnSubFinish400107(arg1)
    print("OnSubFinish400107")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(4001, 10107)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
end

function Quest4001:OnSubStart400108(arg1)
    print("OnSubStart400108")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13321Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13323Data.id, 400108, 0, 10)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13399Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400108_NarratorTrigger", "Actor/Gadget/Q400108_NarratorTrigger", 70900002, 0, points.TPos_Q400108_NarratorTrigger.pos, points.TPos_Q400108_NarratorTrigger.rot, true, false, 3)
end

function Quest4001:OnSubFinish400108(arg1)
    print("OnSubFinish400108")
    if actorMgr:GetActor("Q400108_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q400108_NarratorTrigger")
    end

    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(4001, 10108)
    end)

    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4001:OnSubStart400109(arg1)
    print("OnSubStart400109")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13323Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13322Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5127Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc13323Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest4001:OnSubFinish400109(arg1)
    print("OnSubFinish400109")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(4001, 10109)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4001:OnSubStart400110(arg1)
    print("OnSubStart400110")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13322Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc5027Data.id, 400110, 0, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13323Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13322Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest4001:OnSubFinish400110(arg1)
    print("OnSubFinish400110")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(4001, 10110)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5027Data.alias, 3)
end

function Quest4001:OnSubStart400111(arg1)
    print("OnSubStart400111")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 400111, 0, 10, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13315Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13315Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5044Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13323Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13322Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13315Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4001:OnSubFinish400111(arg1)
    print("OnSubFinish400111")
    this:LightNotifyTo(npcs.Npc5044Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13312Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13321Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13323Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13322Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13315Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13399Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc13315Data.alias):DisableInteeHeadCtrl(false)
end

return Quest4001
