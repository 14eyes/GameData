require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40244 = class("Quest40244", QuestActorProxy)
Quest40244.defaultAlias = "Quest40244"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40244:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40244:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024407"] = self.OnSubStart4024407,
        ["4024401"] = self.OnSubStart4024401,
        ["4024402"] = self.OnSubStart4024402,
        ["4024403"] = self.OnSubStart4024403,
        ["4024404"] = self.OnSubStart4024404,
        ["4024405"] = self.OnSubStart4024405,
        ["4024406"] = self.OnSubStart4024406,
        ["4024412"] = self.OnSubStart4024412,
        ["4024413"] = self.OnSubStart4024413,
        ["4024414"] = self.OnSubStart4024414,
        ["4024408"] = self.OnSubStart4024408,
        ["4024417"] = self.OnSubStart4024417,
        ["4024409"] = self.OnSubStart4024409,
        ["4024415"] = self.OnSubStart4024415,
        ["4024410"] = self.OnSubStart4024410,
        ["4024411"] = self.OnSubStart4024411,
        ["4024416"] = self.OnSubStart4024416
    }
end

function Quest40244:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024407"] = self.OnSubFinish4024407,
        ["4024401"] = self.OnSubFinish4024401,
        ["4024402"] = self.OnSubFinish4024402,
        ["4024403"] = self.OnSubFinish4024403,
        ["4024404"] = self.OnSubFinish4024404,
        ["4024405"] = self.OnSubFinish4024405,
        ["4024406"] = self.OnSubFinish4024406,
        ["4024412"] = self.OnSubFinish4024412,
        ["4024413"] = self.OnSubFinish4024413,
        ["4024414"] = self.OnSubFinish4024414,
        ["4024408"] = self.OnSubFinish4024408,
        ["4024417"] = self.OnSubFinish4024417,
        ["4024409"] = self.OnSubFinish4024409,
        ["4024415"] = self.OnSubFinish4024415,
        ["4024410"] = self.OnSubFinish4024410,
        ["4024411"] = self.OnSubFinish4024411,
        ["4024416"] = self.OnSubFinish4024416
    }
end

function Quest40244:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4024406"] = self.OnSubFailed4024406,
        ["4024408"] = self.OnSubFailed4024408,
        ["4024417"] = self.OnSubFailed4024417,
        ["4024411"] = self.OnSubFailed4024411,
        ["4024416"] = self.OnSubFailed4024416
    }
end

function Quest40244:Start()
    print("Start")
end

function Quest40244:OnDestroy()
    print("OnDestroy")
end

function Quest40244:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40244:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40244:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("4024416")
    this:DestroyNpcTrigger("Q4024402N30771Trigger")
    this:DestroyNpcTrigger("Q4024403N1078Trigger")
    this:DestroyNpcTrigger("Q4024404N2627Trigger")
    this:DestroyNpcTrigger("Q4024406N31015Trigger")
    this:DestroyNpcTrigger("Q4024410N30771Trigger")
    this:DestroyNpcTrigger("Q4024409N1336Trigger")
    this:DestroyNpcTrigger("Q4024412N1336Trigger")
    this:DestroyNpcTrigger("Q4024413N2627Trigger")
    this:DestroyNpcTrigger("Q4024415N1073Trigger")
    this:DestroyNpcTrigger("Q4024416N1073Trigger")
    this:DestroyNpcTrigger("Q4024417N1336Trigger")
    this:ActorDestroy("Q4024416Trigger", 40244)
    this:ActorDestroy("Q4024405Trigger", nil)
    this:ActorDestroy("Q4024414Trigger", 40244)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30771.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2627.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc31015.alias, 20358)
    this:SafeDestroyQuestNpc(npcs.Npc2626.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc30423.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1081.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc13699.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc30771.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 20358)
    this:CancelRangeStoryByQuest(134024401)
    this:RecycleAllRes()
end

function Quest40244:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024416Trigger", 40244)
    this:ActorDestroy("Q4024405Trigger", nil)
    this:ActorDestroy("Q4024414Trigger", 40244)
end

function Quest40244:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4024414 then
        this:PlayerEnterDungeonWithData(2, 1327, 4024414, 2, datas.PlayerEnterDungeonDataNormal, nil, nil)
    end
end

function Quest40244:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40244:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40244:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40244:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40244:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40244:OnSubStart4024407(arg1)
    print("OnSubStart4024407")
end

function Quest40244:OnSubFinish4024407(arg1)
    print("OnSubFinish4024407")
end

function Quest40244:OnSubStart4024401(arg1)
    print("OnSubStart4024401")
    actorUtils.FinishQuestWithParam({false}, {4024401})
end

function Quest40244:OnSubFinish4024401(arg1)
    print("OnSubFinish4024401")
    this:QuestNarratorTask(datas.NarratorWithId4024401, nil)
end

function Quest40244:OnSubStart4024402(arg1)
    print("OnSubStart4024402")
    this:NpcCreateWithNpcTrigger(npcs.Npc30771.id, 0, 10, 4024402)
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1082.id, 0, false, 0)
end

function Quest40244:OnSubFinish4024402(arg1)
    print("OnSubFinish4024402")
    this:NpcDestroyImmediately(3, npcs.Npc30771.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1073.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1082.alias)
    this:ClearNarratorTask()
end

function Quest40244:OnSubStart4024403(arg1)
    print("OnSubStart4024403")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1078.id, 0, 4024403, 18, true)
end

function Quest40244:OnSubFinish4024403(arg1)
    print("OnSubFinish4024403")
    this:NpcDestroyImmediately(3, npcs.Npc1078.alias)
end

function Quest40244:OnSubStart4024404(arg1)
    print("OnSubStart4024404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc2627.id, 0, 4024404, 40, true)
end

function Quest40244:OnSubFinish4024404(arg1)
    print("OnSubFinish4024404")
    this:NpcDestroyImmediately(1161, npcs.Npc2627.alias)
end

function Quest40244:OnSubStart4024405(arg1)
    print("OnSubStart4024405")
    actorMgr:CreateActorWithPos("Q4024405Trigger", "Actor/Gadget/Q4024405Trigger", 70900002, 0, points._Q4024405TriggerPoint_.pos, points._Q4024405TriggerPoint_.rot, true, false, 1161, nil, 0, 40244)
end

function Quest40244:OnSubFinish4024405(arg1)
    print("OnSubFinish4024405")
    this:ActorDestroy("Q4024405Trigger", nil)
end

function Quest40244:OnSubStart4024406(arg1)
    print("OnSubStart4024406")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc31015.id, 0, 4024406, 40, true)
end

function Quest40244:OnSubFinish4024406(arg1)
    print("OnSubFinish4024406")
    this:NpcDestroyImmediately(20358, npcs.Npc31015.alias)
end

function Quest40244:OnSubFailed4024406(arg1)
    print("OnSubFailed4024406")
    this:RecycleAllRes()
end

function Quest40244:OnSubStart4024412(arg1)
    print("OnSubStart4024412")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024412, 40, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20358 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
            end
        end)
    end)
end

function Quest40244:OnSubFinish4024412(arg1)
    print("OnSubFinish4024412")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
end

function Quest40244:OnSubStart4024413(arg1)
    print("OnSubStart4024413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024413, 0, 40, 0, npcs.Npc2627.id)
end

function Quest40244:OnSubFinish4024413(arg1)
    print("OnSubFinish4024413")
end

function Quest40244:OnSubStart4024414(arg1)
    print("OnSubStart4024414")
    this:CreateQuestNpc(arg1, npcs.Npc1336.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2627.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30771.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4024414Trigger", "Actor/Gadget/Q4024414Trigger", 70900002, 0, points._Q4024414TriggerPoint_.pos, points._Q4024414TriggerPoint_.rot, true, false, 20358, nil, 0, 40244)
end

function Quest40244:OnSubFinish4024414(arg1)
    print("OnSubFinish4024414")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc2627.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc30771.alias)
end

function Quest40244:OnSubStart4024408(arg1)
    print("OnSubStart4024408")
end

function Quest40244:OnSubFinish4024408(arg1)
    print("OnSubFinish4024408")
end

function Quest40244:OnSubFailed4024408(arg1)
    print("OnSubFailed4024408")
    this:RecycleAllRes()
end

function Quest40244:OnSubStart4024417(arg1)
    print("OnSubStart4024417")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024417, 0, 80, 0, npcs.Npc1336.id)
end

function Quest40244:OnSubFinish4024417(arg1)
    print("OnSubFinish4024417")
    this:NpcDestroyImmediately(20358, npcs.Npc1336.alias)
end

function Quest40244:OnSubFailed4024417(arg1)
    print("OnSubFailed4024417")
    this:RecycleAllRes()
end

function Quest40244:OnSubStart4024409(arg1)
    print("OnSubStart4024409")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024409, 20, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20358 then
                this:TransmitPlayerByData(arg1, 2, datas.TransmitDataNormal, nil, nil, nil)
            end
        end)
    end)
end

function Quest40244:OnSubFinish4024409(arg1)
    print("OnSubFinish4024409")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
end

function Quest40244:OnSubStart4024415(arg1)
    print("OnSubStart4024415")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1073.id, 0, 4024415, 40, true)
end

function Quest40244:OnSubFinish4024415(arg1)
    print("OnSubFinish4024415")
    this:NpcDestroyImmediately(1161, npcs.Npc1073.alias)
end

function Quest40244:OnSubStart4024410(arg1)
    print("OnSubStart4024410")
    this:CreateQuestNpc(arg1, npcs.Npc2627.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2626.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30423.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc30771.id, 0, 4024410, 12, true)
    this:CreateQuestNpc(arg1, npcs.Npc1081.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13699.id, 0, false, 0)
end

function Quest40244:OnSubFinish4024410(arg1)
    print("OnSubFinish4024410")
    this:NpcDestroyImmediately(3, npcs.Npc30771.alias)
end

function Quest40244:OnSubStart4024411(arg1)
    print("OnSubStart4024411")
    this:DeployRangeStoryByQuest(134024401, 3, {x = 3515.844, y = 452.648, z = 4164.622}, 80, 100)
end

function Quest40244:OnSubFinish4024411(arg1)
    print("OnSubFinish4024411")
end

function Quest40244:OnSubFailed4024411(arg1)
    print("OnSubFailed4024411")
    this:RecycleAllRes()
end

function Quest40244:OnSubStart4024416(arg1)
    print("OnSubStart4024416")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024416, 0, 12, 0, npcs.Npc1073.id)
end

function Quest40244:OnSubFinish4024416(arg1)
    print("OnSubFinish4024416")
    this:NpcDestroyImmediately(1161, npcs.Npc2626.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc2627.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc30423.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc1081.alias)
    this:NpcDestroyImmediately(1161, npcs.Npc13699.alias)
    this:CancelRangeStoryByQuest(134024401)
    this:CallDelayByQuest("4024416", 0.5, function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1073.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList4024416)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList4024416)
        this:GetQuestNpcActor(npcs.Npc1073.alias, 40244):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1318.alias, 40244):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q4024416Trigger", "Actor/Gadget/Q4024416Trigger", 70900002, 0, points._Q4024416TriggerPoint_.pos, points._Q4024416TriggerPoint_.rot, true, false, 3, nil, 0, 40244)
    end)
end

function Quest40244:OnSubFailed4024416(arg1)
    print("OnSubFailed4024416")
    this:RecycleAllRes()
end

return Quest40244
