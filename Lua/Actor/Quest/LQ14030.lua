require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14030 = class("Quest14030", QuestActorProxy)
Quest14030.defaultAlias = "Quest14030"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403001"] = self.OnSubStart1403001,
        ["1403002"] = self.OnSubStart1403002,
        ["1403003"] = self.OnSubStart1403003
    }
end

function Quest14030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403001"] = self.OnSubFinish1403001,
        ["1403002"] = self.OnSubFinish1403002,
        ["1403003"] = self.OnSubFinish1403003
    }
end

function Quest14030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403001"] = self.OnSubFailed1403001,
        ["1403002"] = self.OnSubFailed1403002,
        ["1403003"] = self.OnSubFailed1403003
    }
end

function Quest14030:Start()
    print("Start")
end

function Quest14030:OnDestroy()
    print("OnDestroy")
end

function Quest14030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14030:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14030:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest14030:OnSubStart1403001(arg1)
    print("OnSubStart1403001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1079.id, 1403001, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc14031.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14032.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5027.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13747.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13748.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13758.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
    this:CreateLocalGadget(70711537, "0", {x = 3540.91, y = 427.87, z = 4471.025}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
    if sceneData.currSceneID == 1092 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
        end)
    end

    this:BanCrowdNpc(3401, 8, nil, true)
    this:BanCrowdNpc(3401, 3, nil, true)
    this:BanCrowdNpc(3401, 20, nil, true)
    this:GetQuestNpcActor(npcs.Npc1079.alias, 14030):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13747.alias, 14030):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13748.alias, 14030):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14032.alias, 14030):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14030:OnSubFinish1403001(arg1)
    print("OnSubFinish1403001")
    this:SafeDestroyQuestNpc(npcs.Npc1079.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14031.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14032.alias, 3)
    this:BanCrowdNpc(3401, 20, nil, false)
end

function Quest14030:OnSubFailed1403001(arg1)
    print("OnSubFailed1403001")
end

function Quest14030:OnSubStart1403002(arg1)
    print("OnSubStart1403002")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc5027.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc1078.id, 1403002, 0, 40)
    this:CreateQuestNpc(arg1, npcs.Npc1076.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc13747.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc13748.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc13758.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc5028.alias, 1, true)
    this:CreateLocalGadget(70711537, "0", {x = 3540.91, y = 427.87, z = 4471.025}, {x = 0, y = 0, z = 0}, 3, nil, nil, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 14030):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13758.alias, 14030):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13747.alias, 14030):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13748.alias, 14030):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13758.alias, 14030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13747.alias, 14030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13748.alias, 14030):DisableInteeHeadCtrl(true)
    end)

    this:BanCrowdNpc(3401, 8, nil, true)
    this:BanCrowdNpc(3401, 3, nil, true)
end

function Quest14030:OnSubFinish1403002(arg1)
    print("OnSubFinish1403002")
    this:SafeDestroyQuestNpc(npcs.Npc5027.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13747.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13748.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13758.alias, 3)
    this:RemoveLocalGadget(70711537, "0")
    this:LightNotifyTo(npcs.Npc5028.alias, 0, true)
    this:BanCrowdNpc(3401, 8, nil, false)
    this:BanCrowdNpc(3401, 3, nil, false)
end

function Quest14030:OnSubFailed1403002(arg1)
    print("OnSubFailed1403002")
end

function Quest14030:OnSubStart1403003(arg1)
    print("OnSubStart1403003")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1078.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1076.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("Q1403003_N1079Trigger", 1403003, npcs.Npc1079.id, 0, 5, 2)
        this:GetQuestNpcActor(npcs.Npc1078.alias, 14030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1076.alias, 14030):DisableInteeHeadCtrl(true)
    end)
end

function Quest14030:OnSubFinish1403003(arg1)
    print("OnSubFinish1403003")
    this:SafeDestroyQuestNpc(npcs.Npc1078.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1076.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1079.id, 0, false, 0.5)
    end)

    actorMgr:CreateActorWithPos("Q14030LeftTrigger", "Actor/Gadget/Q14030LeftTrigger", 70900002, 0, points.Q14030LeftTrigger.pos, points.Q14030LeftTrigger.rot, true, false, 3)
end

function Quest14030:OnSubFailed1403003(arg1)
    print("OnSubFailed1403003")
end

return Quest14030
