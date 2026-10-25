require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4019 = class("Quest4019", QuestActorProxy)
Quest4019.defaultAlias = "Quest4019"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401908"] = self.OnSubStart401908,
        ["401901"] = self.OnSubStart401901,
        ["401902"] = self.OnSubStart401902,
        ["401904"] = self.OnSubStart401904,
        ["401905"] = self.OnSubStart401905,
        ["401907"] = self.OnSubStart401907,
        ["401909"] = self.OnSubStart401909,
        ["401903"] = self.OnSubStart401903,
        ["401906"] = self.OnSubStart401906
    }
end

function Quest4019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401908"] = self.OnSubFinish401908,
        ["401901"] = self.OnSubFinish401901,
        ["401902"] = self.OnSubFinish401902,
        ["401904"] = self.OnSubFinish401904,
        ["401905"] = self.OnSubFinish401905,
        ["401907"] = self.OnSubFinish401907,
        ["401909"] = self.OnSubFinish401909,
        ["401903"] = self.OnSubFinish401903,
        ["401906"] = self.OnSubFinish401906
    }
end

function Quest4019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4019:Start()
    print("Start")
end

function Quest4019:OnDestroy()
    print("OnDestroy")
end

function Quest4019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 401906 then
        this:ShowBlackScreenWithDialogText(0, 2, 0.5, function(arg1)
            actorUtils.FinishQuestID(false, 401906)
        end, nil, nil, 0, false, true)
    end
end

function Quest4019:OnSubStart401908(arg1)
    print("OnSubStart401908")
    actorMgr:CreateActorWithPos("Q401908_TriggerOut", "Actor/Gadget/Q401908_TriggerOut", 70900002, 0, points.TPos_Q401908_TriggerOut.pos, points.TPos_Q401908_TriggerOut.rot, true, false, 3)
end

function Quest4019:OnSubFinish401908(arg1)
    print("OnSubFinish401908")
    this:ActorDestroy(datas.Q401908_TriggerOut.alias)
end

function Quest4019:OnSubStart401901(arg1)
    print("OnSubStart401901")
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401901(arg1)
    print("OnSubFinish401901")
end

function Quest4019:OnSubStart401902(arg1)
    print("OnSubStart401902")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    actorMgr:CreateActorWithPos("Q401902_TriggerIn", "Actor/Gadget/Q401902_TriggerIn", 70900002, 0, {x = 4577.74, y = 167.481, z = 4627.696}, {x = 0.0, y = 10.715, z = 0.0}, true, false)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4019:OnSubFinish401902(arg1)
    print("OnSubFinish401902")
end

function Quest4019:OnSubStart401904(arg1)
    print("OnSubStart401904")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13530Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13531Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13531Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401904(arg1)
    print("OnSubFinish401904")
end

function Quest4019:OnSubStart401905(arg1)
    print("OnSubStart401905")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13533Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13532Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401905(arg1)
    print("OnSubFinish401905")
end

function Quest4019:OnSubStart401907(arg1)
    print("OnSubStart401907")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401907(arg1)
    print("OnSubFinish401907")
end

function Quest4019:OnSubStart401909(arg1)
    print("OnSubStart401909")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401909(arg1)
    print("OnSubFinish401909")
end

function Quest4019:OnSubStart401903(arg1)
    print("OnSubStart401903")
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401903(arg1)
    print("OnSubFinish401903")
end

function Quest4019:OnSubStart401906(arg1)
    print("OnSubStart401906")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(8010, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13530Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13533Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13532Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13531Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
end

function Quest4019:OnSubFinish401906(arg1)
    print("OnSubFinish401906")
    this:RemoveLocalGadget(70291004, "1")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc13530Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13531Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13533Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13532Data.alias, 3)
end

return Quest4019
