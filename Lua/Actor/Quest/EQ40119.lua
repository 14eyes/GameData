require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40119 = class("Quest40119", QuestActorProxy)
Quest40119.defaultAlias = "Quest40119"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40119:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4011901"] = self.OnSubStart4011901,
        ["4011902"] = self.OnSubStart4011902,
        ["4011903"] = self.OnSubStart4011903,
        ["4011904"] = self.OnSubStart4011904,
        ["4011905"] = self.OnSubStart4011905,
        ["4011906"] = self.OnSubStart4011906,
        ["4011909"] = self.OnSubStart4011909,
        ["4011910"] = self.OnSubStart4011910,
        ["4011907"] = self.OnSubStart4011907,
        ["4011908"] = self.OnSubStart4011908
    }
end

function Quest40119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4011901"] = self.OnSubFinish4011901,
        ["4011902"] = self.OnSubFinish4011902,
        ["4011903"] = self.OnSubFinish4011903,
        ["4011904"] = self.OnSubFinish4011904,
        ["4011905"] = self.OnSubFinish4011905,
        ["4011906"] = self.OnSubFinish4011906,
        ["4011909"] = self.OnSubFinish4011909,
        ["4011910"] = self.OnSubFinish4011910,
        ["4011907"] = self.OnSubFinish4011907,
        ["4011908"] = self.OnSubFinish4011908
    }
end

function Quest40119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4011908"] = self.OnSubFailed4011908}
end

function Quest40119:Start()
    print("Start")
end

function Quest40119:OnDestroy()
    print("OnDestroy")
end

function Quest40119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40119:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2605Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc2606Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc13252Data.alias, 10)
    actorMgr:DestroyEntityActor("Q4011901Finish", 10, false)
    actorMgr:DestroyEntityActor("Q4011907Finish", 10, false)
    this:ActorDestroy("Q4011908Talk")
    this:ActorDestroy("Q4011908Kaiche")
    this:ActorDestroy("Q4011909Finish")
    this:ActorDestroy("Q4011905CS")
    this:ActorDestroy("Q4011906Talk")
    this:ActorDestroy("Q4011910Baodi")
    this:ActorDestroy("Q4011908guer")
end

function Quest40119:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40119:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40119:NPCBlackscreen(arg1)
    print("[MainId: 40119][Trigger: Q4011908Talk] TriggerIn")
    if 0 <= arg1 then
        if arg1 <= #targetDataList then
            if arg1 == 0 then
                print("data:All")
            else
                local v = targetDataList[arg1]
                print("data:" .. tostring(v.configId))
                local interInfo = self:MakeInterInfo("MovingTarget0", v)
                print(interInfo)
                local actor = actorMgr:GetActor("40119")
                self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
                    local actor = actorMgr:GetActor("40119")
                    actor:CreateQuestNpcById(4011908, npcs.Npc2605Data.id, 0)
                    actor:RequestInteraction(npcs.Npc2605Data.alias, interInfo)
                    this:DestroySelf()
                end, nil, nil, "", false, true)
            end
        end
    end
end

function Quest40119:OnSubStart4011901(arg1)
    print("OnSubStart4011901")
    actorMgr:CreateActorWithPos("Q4011901Finish", "Actor/Gadget/Q4011901Finish", 70900002, 0, points.TPos_Q4011901Finish.pos, points.TPos_Q4011901Finish.rot, true, false, 10)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13252Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    end)
end

function Quest40119:OnSubFinish4011901(arg1)
    print("OnSubFinish4011901")
end

function Quest40119:OnSubStart4011902(arg1)
    print("OnSubStart4011902")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 0)
        this:RequestInteraction(npcs.Npc13247Data.alias)
    end, nil, nil, "", false, true)
end

function Quest40119:OnSubFinish4011902(arg1)
    print("OnSubFinish4011902")
    this:DestroyQuestNpcActor(npcs.Npc13252Data.alias, 10)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    end)
end

function Quest40119:OnSubStart4011903(arg1)
    print("OnSubStart4011903")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2605Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2606Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13247Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc2605Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc2606Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13247Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc10090Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2605Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc2606Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1029Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1037Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40119:OnSubFinish4011903(arg1)
    print("OnSubFinish4011903")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest40119:OnSubStart4011904(arg1)
    print("OnSubStart4011904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13247Data.id, 4011904, 0, 15, 1)
end

function Quest40119:OnSubFinish4011904(arg1)
    print("OnSubFinish4011904")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40119:OnSubStart4011905(arg1)
    print("OnSubStart4011905")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q4011905CS", "Actor/Gadget/Q4011905CS", 70900002, 0, points.TPos_Q4011905CS.pos, points.TPos_Q4011905CS.rot, true, false, 10)
    end)
end

function Quest40119:OnSubFinish4011905(arg1)
    print("OnSubFinish4011905")
    this:TransmitPlayerById(arg1, 1)
end

function Quest40119:OnSubStart4011906(arg1)
    print("OnSubStart4011906")
    this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 1)
    actorMgr:CreateActorWithPos("Q4011906Talk", "Actor/Gadget/Q4011906Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011906_N13247").pos, sceneData:GetDummyPoint(10, "Q4011906_N13247").rot, true, false, 10)
end

function Quest40119:OnSubFinish4011906(arg1)
    print("OnSubFinish4011906")
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
end

function Quest40119:OnSubStart4011909(arg1)
    print("OnSubStart4011909")
    actorMgr:CreateActorWithPos("Q4011909Finish", "Actor/Gadget/Q4011909Finish", 70900002, 0, {x = 452.196, y = 340.775, z = 424.791}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40119:OnSubFinish4011909(arg1)
    print("OnSubFinish4011909")
end

function Quest40119:OnSubStart4011910(arg1)
    print("OnSubStart4011910")
    actorMgr:CreateActorWithPos("Q4011910Baodi", "Actor/Gadget/Q4011910Baodi", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011908_N10090").pos, sceneData:GetDummyPoint(10, "Q4011908_N10090").rot, true, false, 10)
end

function Quest40119:OnSubFinish4011910(arg1)
    print("OnSubFinish4011910")
    this:ActorDestroy("Q4011910Baodi")
end

function Quest40119:OnSubStart4011907(arg1)
    print("OnSubStart4011907")
    actorMgr:CreateActorWithPos("Q4011907Finish", "Actor/Gadget/Q4011907Finish", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011908_N10090").pos, sceneData:GetDummyPoint(10, "Q4011908_N10090").rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q4011908Kaiche", "Actor/Gadget/Q4011908Kaiche", 70900002, 0, {x = 446.886, y = 378.459, z = 397.668}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
end

function Quest40119:OnSubFinish4011907(arg1)
    print("OnSubFinish4011907")
    this:ActorDestroy("Q4011908Kaiche")
end

function Quest40119:OnSubStart4011908(arg1)
    print("OnSubStart4011908")
    actorMgr:CreateActorWithPos("Q4011908Talk", "Actor/Gadget/Q4011908Talk", 70900002, 0, sceneData:GetDummyPoint(10, "Q4011908_N10090").pos, sceneData:GetDummyPoint(10, "Q4011908_N10090").rot, true, false, 10)
end

function Quest40119:OnSubFinish4011908(arg1)
    print("OnSubFinish4011908")
    this:SafeDestroyQuestNpc(npcs.Npc2605Data.alias, 10)
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q4011908guer", "Actor/Gadget/Q4011908guer", 70900002, 0, {x = 452.051, y = 324.197, z = 457.281}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 10)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc13247Data.id, 0, false, 0.5)
    end)
end

function Quest40119:OnSubFailed4011908(arg1)
    print("OnSubFailed4011908")
    this:ActorDestroy("Q4011908Talk")
    this:DestroyQuestNpcActor(npcs.Npc2605Data.alias, 10)
end

return Quest40119
