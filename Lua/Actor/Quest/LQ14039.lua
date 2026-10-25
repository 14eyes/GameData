require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14039 = class("Quest14039", QuestActorProxy)
Quest14039.defaultAlias = "Quest14039"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14039:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403907"] = self.OnSubStart1403907,
        ["1403908"] = self.OnSubStart1403908,
        ["1403909"] = self.OnSubStart1403909,
        ["1403910"] = self.OnSubStart1403910,
        ["1403911"] = self.OnSubStart1403911,
        ["1403912"] = self.OnSubStart1403912,
        ["1403913"] = self.OnSubStart1403913,
        ["1403914"] = self.OnSubStart1403914,
        ["1403915"] = self.OnSubStart1403915,
        ["1403916"] = self.OnSubStart1403916,
        ["1403917"] = self.OnSubStart1403917,
        ["1403920"] = self.OnSubStart1403920,
        ["1403904"] = self.OnSubStart1403904,
        ["1403922"] = self.OnSubStart1403922,
        ["1403923"] = self.OnSubStart1403923,
        ["1403918"] = self.OnSubStart1403918,
        ["1403919"] = self.OnSubStart1403919,
        ["1403901"] = self.OnSubStart1403901,
        ["1403902"] = self.OnSubStart1403902,
        ["1403903"] = self.OnSubStart1403903,
        ["1403921"] = self.OnSubStart1403921,
        ["1403905"] = self.OnSubStart1403905,
        ["1403906"] = self.OnSubStart1403906
    }
end

function Quest14039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403907"] = self.OnSubFinish1403907,
        ["1403908"] = self.OnSubFinish1403908,
        ["1403909"] = self.OnSubFinish1403909,
        ["1403910"] = self.OnSubFinish1403910,
        ["1403911"] = self.OnSubFinish1403911,
        ["1403912"] = self.OnSubFinish1403912,
        ["1403913"] = self.OnSubFinish1403913,
        ["1403914"] = self.OnSubFinish1403914,
        ["1403915"] = self.OnSubFinish1403915,
        ["1403916"] = self.OnSubFinish1403916,
        ["1403917"] = self.OnSubFinish1403917,
        ["1403920"] = self.OnSubFinish1403920,
        ["1403904"] = self.OnSubFinish1403904,
        ["1403922"] = self.OnSubFinish1403922,
        ["1403923"] = self.OnSubFinish1403923,
        ["1403918"] = self.OnSubFinish1403918,
        ["1403919"] = self.OnSubFinish1403919,
        ["1403901"] = self.OnSubFinish1403901,
        ["1403902"] = self.OnSubFinish1403902,
        ["1403903"] = self.OnSubFinish1403903,
        ["1403921"] = self.OnSubFinish1403921,
        ["1403905"] = self.OnSubFinish1403905,
        ["1403906"] = self.OnSubFinish1403906
    }
end

function Quest14039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1403913"] = self.OnSubFailed1403913,
        ["1403915"] = self.OnSubFailed1403915,
        ["1403917"] = self.OnSubFailed1403917
    }
end

function Quest14039:Start()
    print("Start")
end

function Quest14039:OnDestroy()
    print("OnDestroy")
end

function Quest14039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14039:OnSubStart1403907(arg1)
    print("OnSubStart1403907")
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q14039Trigger2", "Actor/Gadget/Q14039Trigger2", 70900002, 0, {x = -1935.53, y = 198.63, z = 2499.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q14039Trigger1", "Actor/Gadget/Q14039Trigger1", 70900002, 0, points.TPos_Q14039Trigger1.pos, points.TPos_Q14039Trigger1.rot, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc14259Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14261Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14180Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14121Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14122Data.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc4151Data.id, 0, false, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc4151Data.alias)
        questNpcActor:DoFreeStyle(4190, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        local v = this:GetQuestNpcActor(npcs.Npc14259Data.alias)
        v:DoFreeStyle(4180, true, nil, true, true, false, false)
        v:DisableInteeHeadCtrl(true)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14261Data.alias)
        questNpcActor2:DoFreeStyle(4190, true, nil, true, true, false, false)
        questNpcActor2:DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4153Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
        this:BanCrowdNpc(3304, 15, nil, true)
    end)
end

function Quest14039:OnSubFinish1403907(arg1)
    print("OnSubFinish1403907")
    this:QuestNarratorTask(datas.Narrator_1403902)
    actorMgr:DestroyEntityActor("Q14039Trigger1", 3, false)
end

function Quest14039:OnSubStart1403908(arg1)
    print("OnSubStart1403908")
    actorMgr:CreateActorWithPos("Q14039Trigger9", "Actor/Gadget/Q14039Trigger9", 70900002, 0, points.TPos_Q14039Trigger9.pos, points.TPos_Q14039Trigger9.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14039Trigger10", "Actor/Gadget/Q14039Trigger10", 70900002, 0, points.TPos_Q14039Trigger10.pos, points.TPos_Q14039Trigger10.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4142Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4151Data.alias)
    questNpcActor:DoFreeStyle(4190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14259Data.alias)
    v:DoFreeStyle(4180, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14261Data.alias)
    questNpcActor2:DoFreeStyle(4190, true, nil, true, true, false, false)
    questNpcActor2:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4153Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
    this:BanCrowdNpc(3304, 15, nil, true)
end

function Quest14039:OnSubFinish1403908(arg1)
    print("OnSubFinish1403908")
end

function Quest14039:OnSubStart1403909(arg1)
    print("OnSubStart1403909")
end

function Quest14039:OnSubFinish1403909(arg1)
    print("OnSubFinish1403909")
end

function Quest14039:OnSubStart1403910(arg1)
    print("OnSubStart1403910")
    actorMgr:CreateActorWithPos("Q14039Trigger3", "Actor/Gadget/Q14039Trigger3", 70900002, 0, points.TPos_Q14039Trigger3.pos, points.TPos_Q14039Trigger3.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14039Trigger9", "Actor/Gadget/Q14039Trigger9", 70900002, 0, points.TPos_Q14039Trigger9.pos, points.TPos_Q14039Trigger9.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14039Trigger10", "Actor/Gadget/Q14039Trigger10", 70900002, 0, points.TPos_Q14039Trigger10.pos, points.TPos_Q14039Trigger10.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4151Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14259Data.alias)
    v:DoFreeStyle(4180, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14261Data.alias)
    questNpcActor2:DoFreeStyle(4190, true, nil, true, true, false, false)
    questNpcActor2:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4153Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
    this:BanCrowdNpc(3304, 15, nil, true)
end

function Quest14039:OnSubFinish1403910(arg1)
    print("OnSubFinish1403910")
    this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc4142Data.alias, 3)
end

function Quest14039:OnSubStart1403911(arg1)
    print("OnSubStart1403911")
    actorMgr:CreateActorWithPos("Q14039Trigger4", "Actor/Gadget/Q14039Trigger4", 70900002, 0, points.TPos_Q14039Trigger4.pos, points.TPos_Q14039Trigger4.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14039Trigger9", "Actor/Gadget/Q14039Trigger9", 70900002, 0, points.TPos_Q14039Trigger9.pos, points.TPos_Q14039Trigger9.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q14039Trigger10", "Actor/Gadget/Q14039Trigger10", 70900002, 0, points.TPos_Q14039Trigger10.pos, points.TPos_Q14039Trigger10.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc4151Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14259Data.alias)
    v:DoFreeStyle(4180, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc14261Data.alias)
    questNpcActor2:DoFreeStyle(4190, true, nil, true, true, false, false)
    questNpcActor2:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4153Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
    this:BanCrowdNpc(3304, 15, nil, true)
end

function Quest14039:OnSubFinish1403911(arg1)
    print("OnSubFinish1403911")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator_1403903)
        this:ClearSpeechBubbleTask()
        this:DestroyQuestNpcActor(npcs.Npc4151Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14259Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14261Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14180Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14121Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14122Data.alias, 3)
        this:BanCrowdNpc(3304, 15, nil, false)
        actorMgr:DestroyEntityActor("Q14039Trigger9", 3, false)
        actorMgr:DestroyEntityActor("Q14039Trigger10", 3, false)
        this:LightNotifyTo(npcs.Npc4153Data.alias, 0, true)
    end)
end

function Quest14039:OnSubStart1403912(arg1)
    print("OnSubStart1403912")
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
end

function Quest14039:OnSubFinish1403912(arg1)
    print("OnSubFinish1403912")
end

function Quest14039:OnSubStart1403913(arg1)
    print("OnSubStart1403913")
    actorMgr:CreateActorWithPos("Q14039Trigger7", "Actor/Gadget/Q14039Trigger7", 70900002, 0, {x = 491.0, y = 74.0, z = 234.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20231)
    this:CreateQuestNpc(arg1, npcs.Npc14245Data.id, 0, false, 0)
    this:NotifyTo(npcs.Npc4109Data.alias, 1, true)
end

function Quest14039:OnSubFinish1403913(arg1)
    print("OnSubFinish1403913")
    this:DestroyQuestNpcActor(npcs.Npc14245Data.alias, 20231)
    this:LightNotifyTo(npcs.Npc4109Data.alias, 0, true)
end

function Quest14039:OnSubFailed1403913(arg1)
    print("OnSubFailed1403913")
    actorMgr:DestroyEntityActor("Q14039Trigger7", 20231, false)
end

function Quest14039:OnSubStart1403914(arg1)
    print("OnSubStart1403914")
end

function Quest14039:OnSubFinish1403914(arg1)
    print("OnSubFinish1403914")
end

function Quest14039:OnSubStart1403915(arg1)
    print("OnSubStart1403915")
    actorMgr:CreateActorWithPos("Q14039Trigger", "Actor/Gadget/Q14039Trigger", 70900002, 0, {x = 394.429, y = 60.0, z = 432.379}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20231)
end

function Quest14039:OnSubFinish1403915(arg1)
    print("OnSubFinish1403915")
    this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 20231)
end

function Quest14039:OnSubFailed1403915(arg1)
    print("OnSubFailed1403915")
    actorMgr:DestroyEntityActor("Q14039Trigger", 20231, false)
end

function Quest14039:OnSubStart1403916(arg1)
    print("OnSubStart1403916")
end

function Quest14039:OnSubFinish1403916(arg1)
    print("OnSubFinish1403916")
end

function Quest14039:OnSubStart1403917(arg1)
    print("OnSubStart1403917")
    this:CreateQuestNpc(arg1, npcs.Npc14115Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q14039Trigger8", "Actor/Gadget/Q14039Trigger8", 70900002, 0, points.TPos_Q14039Trigger8.pos, points.TPos_Q14039Trigger8.rot, true, false, 20231)
end

function Quest14039:OnSubFinish1403917(arg1)
    print("OnSubFinish1403917")
    this:DestroyQuestNpcActor(npcs.Npc14115Data.alias, 20231)
end

function Quest14039:OnSubFailed1403917(arg1)
    print("OnSubFailed1403917")
    actorMgr:DestroyEntityActor("Q14039Trigger8", 20231, false)
end

function Quest14039:OnSubStart1403920(arg1)
    print("OnSubStart1403920")
    this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
    this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
    this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
end

function Quest14039:OnSubFinish1403920(arg1)
    print("OnSubFinish1403920")
end

function Quest14039:OnSubStart1403904(arg1)
    print("OnSubStart1403904")
end

function Quest14039:OnSubFinish1403904(arg1)
    print("OnSubFinish1403904")
    actorMgr:CreateActorWithPos("Q14039Trigger11", "Actor/Gadget/Q14039Trigger11", 70900002, 0, {x = 542.164, y = 71.0, z = 655.648}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20231)
end

function Quest14039:OnSubStart1403922(arg1)
    print("OnSubStart1403922")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q14039Trigger6", "Actor/Gadget/Q14039Trigger6", 70900002, 0, points.TPos_Q14039Trigger6.pos, points.TPos_Q14039Trigger6.rot, true, false, 3)
        this:NotifyTo(npcs.Npc4140Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4141Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4137Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4138Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4136Data.alias, 1, true)
        this:NotifyTo(npcs.Npc4135Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12679Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12720Data.alias, 1, true)
        this:NotifyTo(npcs.Npc12719Data.alias, 1, true)
        if sceneData.currSceneID == 1084 then
            arg1:FinishQuestID(false, 1403922)
        end
    end)
end

function Quest14039:OnSubFinish1403922(arg1)
    print("OnSubFinish1403922")
    actorMgr:DestroyEntityActor("Q14039Trigger6", 3, false)
    this:LightNotifyTo(npcs.Npc4140Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4141Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4139Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4137Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4138Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4136Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4135Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc12679Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc12720Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc12719Data.alias, 0, true)
end

function Quest14039:OnSubStart1403923(arg1)
    print("OnSubStart1403923")
    actorMgr:CreateActorWithPos("Q14039Trigger5", "Actor/Gadget/Q14039Trigger5", 70900002, 0, {x = -0.153, y = 10.611, z = 1.655}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1084)
    this:CreateLocalGadget(707111168, "1", {x = -12.19, y = 8.293, z = 9.84}, {x = 0.0, y = -152.024, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateLocalGadget(707111168, "2", {x = -12.194, y = 8.293, z = 8.689}, {x = 0.0, y = 199.857, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateLocalGadget(707111168, "3", {x = -11.608, y = 8.293, z = 9.843}, {x = 0.0, y = -27.868, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateLocalGadget(70711272, "1", {x = -11.928, y = 8.296, z = 8.37}, {x = 0.0, y = -180.181, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateLocalGadget(70711272, "2", {x = -11.949, y = 8.296, z = 10.1}, {x = 0.0, y = 1.336, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateLocalGadget(70711049, "1", {x = -11.907, y = 8.293, z = 9.254}, {x = 0.0, y = -32.344, z = 0.0}, 1084, nil, nil, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1090Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14262Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14263Data.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14262Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc14263Data.alias)
    v:DoFreeStyle(1190, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5093Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5092Data.alias, 1, true)
end

function Quest14039:OnSubFinish1403923(arg1)
    print("OnSubFinish1403923")
    this:ActionSafeCall(function(arg1)
        this:RemoveLocalGadget(707111168, "1")
        this:RemoveLocalGadget(707111168, "2")
        this:RemoveLocalGadget(707111168, "3")
        this:RemoveLocalGadget(70711272, "1")
        this:RemoveLocalGadget(70711272, "2")
        this:RemoveLocalGadget(70711049, "1")
        this:GetQuestNpcActor(npcs.Npc14262Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc14263Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1090Data.alias, 1084)
        this:DestroyQuestNpcActor(npcs.Npc14262Data.alias, 1084)
        this:DestroyQuestNpcActor(npcs.Npc14263Data.alias, 1084)
        this:LightNotifyTo(npcs.Npc5093Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5092Data.alias, 0, true)
    end)
end

function Quest14039:OnSubStart1403918(arg1)
    print("OnSubStart1403918")
end

function Quest14039:OnSubFinish1403918(arg1)
    print("OnSubFinish1403918")
end

function Quest14039:OnSubStart1403919(arg1)
    print("OnSubStart1403919")
end

function Quest14039:OnSubFinish1403919(arg1)
    print("OnSubFinish1403919")
end

function Quest14039:OnSubStart1403901(arg1)
    print("OnSubStart1403901")
end

function Quest14039:OnSubFinish1403901(arg1)
    print("OnSubFinish1403901")
end

function Quest14039:OnSubStart1403902(arg1)
    print("OnSubStart1403902")
end

function Quest14039:OnSubFinish1403902(arg1)
    print("OnSubFinish1403902")
end

function Quest14039:OnSubStart1403903(arg1)
    print("OnSubStart1403903")
end

function Quest14039:OnSubFinish1403903(arg1)
    print("OnSubFinish1403903")
end

function Quest14039:OnSubStart1403921(arg1)
    print("OnSubStart1403921")
end

function Quest14039:OnSubFinish1403921(arg1)
    print("OnSubFinish1403921")
end

function Quest14039:OnSubStart1403905(arg1)
    print("OnSubStart1403905")
end

function Quest14039:OnSubFinish1403905(arg1)
    print("OnSubFinish1403905")
end

function Quest14039:OnSubStart1403906(arg1)
    print("OnSubStart1403906")
end

function Quest14039:OnSubFinish1403906(arg1)
    print("OnSubFinish1403906")
end

return Quest14039
