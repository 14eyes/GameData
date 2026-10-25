require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74136 = class("Quest74136", QuestActorProxy)
Quest74136.defaultAlias = "Quest74136"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74136:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7413612"] = self.OnSubStart7413612,
        ["7413601"] = self.OnSubStart7413601,
        ["7413602"] = self.OnSubStart7413602,
        ["7413603"] = self.OnSubStart7413603,
        ["7413604"] = self.OnSubStart7413604,
        ["7413605"] = self.OnSubStart7413605,
        ["7413606"] = self.OnSubStart7413606,
        ["7413607"] = self.OnSubStart7413607,
        ["7413608"] = self.OnSubStart7413608,
        ["7413609"] = self.OnSubStart7413609,
        ["7413610"] = self.OnSubStart7413610,
        ["7413611"] = self.OnSubStart7413611
    }
end

function Quest74136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7413612"] = self.OnSubFinish7413612,
        ["7413601"] = self.OnSubFinish7413601,
        ["7413602"] = self.OnSubFinish7413602,
        ["7413603"] = self.OnSubFinish7413603,
        ["7413604"] = self.OnSubFinish7413604,
        ["7413605"] = self.OnSubFinish7413605,
        ["7413606"] = self.OnSubFinish7413606,
        ["7413607"] = self.OnSubFinish7413607,
        ["7413608"] = self.OnSubFinish7413608,
        ["7413609"] = self.OnSubFinish7413609,
        ["7413610"] = self.OnSubFinish7413610,
        ["7413611"] = self.OnSubFinish7413611
    }
end

function Quest74136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74136:Start()
    print("Start")
end

function Quest74136:OnDestroy()
    print("OnDestroy")
end

function Quest74136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74136:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74136:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74136:OnSubStart7413612(arg1)
    print("OnSubStart7413612")
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5276Data.id, 0)
    actorMgr:CreateActorWithPos("Q7413612Trigger", "Actor/Gadget/Q7413612Trigger", 70900002, 0, {x = 2619.085, y = 440.0, z = 3433.72}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74136:OnSubFinish7413612(arg1)
    print("OnSubFinish7413612")
    this:ActorDestroy("Q7413612Trigger")
end

function Quest74136:OnSubStart7413601(arg1)
    print("OnSubStart7413601")
    actorMgr:CreateActorWithPos("Q7413601Trigger", "Actor/Gadget/Q7413601Trigger", 70900002, 0, {x = 2599.841, y = 271.863, z = 3557.479}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74136:OnSubFinish7413601(arg1)
    print("OnSubFinish7413601")
    this:ActorDestroy("Q7413601Trigger")
end

function Quest74136:OnSubStart7413602(arg1)
    print("OnSubStart7413602")
end

function Quest74136:OnSubFinish7413602(arg1)
    print("OnSubFinish7413602")
end

function Quest74136:OnSubStart7413603(arg1)
    print("OnSubStart7413603")
    actorMgr:CreateActorWithPos("Q7413603Trigger1", "Actor/Gadget/Q7413603Trigger1", 70900002, 0, {x = 2596.257, y = 275.471, z = 3545.777}, {x = 0.0, y = 18.11, z = 0.0}, true, false, 3)
end

function Quest74136:OnSubFinish7413603(arg1)
    print("OnSubFinish7413603")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74136:OnSubStart7413604(arg1)
    print("OnSubStart7413604")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74136:OnSubFinish7413604(arg1)
    print("OnSubFinish7413604")
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74136:OnSubStart7413605(arg1)
    print("OnSubStart7413605")
    actorMgr:CreateActorWithPos("Q7413605Trigger2", "Actor/Gadget/Q7413605Trigger2", 70900002, 0, {x = 2593.609, y = 250.192, z = 3489.5}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74136:OnSubFinish7413605(arg1)
    print("OnSubFinish7413605")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74136:OnSubStart7413606(arg1)
    print("OnSubStart7413606")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias, "", true)
end

function Quest74136:OnSubFinish7413606(arg1)
    print("OnSubFinish7413606")
    this:NarratorOnlyTaskByData(datas.Narrator_7413603)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74136:OnSubStart7413607(arg1)
    print("OnSubStart7413607")
end

function Quest74136:OnSubFinish7413607(arg1)
    print("OnSubFinish7413607")
    this:NarratorOnlyTaskByData(datas.Narrator_7413604)
end

function Quest74136:OnSubStart7413608(arg1)
    print("OnSubStart7413608")
end

function Quest74136:OnSubFinish7413608(arg1)
    print("OnSubFinish7413608")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74136:OnSubStart7413609(arg1)
    print("OnSubStart7413609")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias)
end

function Quest74136:OnSubFinish7413609(arg1)
    print("OnSubFinish7413609")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
end

function Quest74136:OnSubStart7413610(arg1)
    print("OnSubStart7413610")
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5276Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5274Data.alias):SitOnChair(8040, false)
    this:GetQuestNpcActor(npcs.Npc5276Data.alias):SitOnChair(8010, false)
end

function Quest74136:OnSubFinish7413610(arg1)
    print("OnSubFinish7413610")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5276Data.alias, 3)
end

function Quest74136:OnSubStart7413611(arg1)
    print("OnSubStart7413611")
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5258Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5257Data.alias, 1, true)
end

function Quest74136:OnSubFinish7413611(arg1)
    print("OnSubFinish7413611")
end

return Quest74136
