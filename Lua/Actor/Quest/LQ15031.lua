require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15031 = class("Quest15031", QuestActorProxy)
Quest15031.defaultAlias = "Quest15031"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest15031:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503101"] = self.OnSubStart1503101,
        ["1503102"] = self.OnSubStart1503102,
        ["1503103"] = self.OnSubStart1503103,
        ["1503105"] = self.OnSubStart1503105,
        ["1503104"] = self.OnSubStart1503104,
        ["1503106"] = self.OnSubStart1503106,
        ["1503108"] = self.OnSubStart1503108,
        ["1503109"] = self.OnSubStart1503109,
        ["1503107"] = self.OnSubStart1503107
    }
end

function Quest15031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503101"] = self.OnSubFinish1503101,
        ["1503102"] = self.OnSubFinish1503102,
        ["1503103"] = self.OnSubFinish1503103,
        ["1503105"] = self.OnSubFinish1503105,
        ["1503104"] = self.OnSubFinish1503104,
        ["1503106"] = self.OnSubFinish1503106,
        ["1503108"] = self.OnSubFinish1503108,
        ["1503109"] = self.OnSubFinish1503109,
        ["1503107"] = self.OnSubFinish1503107
    }
end

function Quest15031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503108"] = self.OnSubFailed1503108}
end

function Quest15031:Start()
    print("Start")
end

function Quest15031:OnDestroy()
    print("OnDestroy")
end

function Quest15031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15031:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1503102Trigger")
    this:BanCrowdNpc(3517, 4, nil, false)
end

function Quest15031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15031:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15031:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15031:Hidecrowd()
    this:BanCrowdNpc(3517, 4, nil, true)
end

function Quest15031:OnSubStart1503101(arg1)
    print("OnSubStart1503101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503101, 0, 15, 0.5, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:Hidecrowd()
end

function Quest15031:OnSubFinish1503101(arg1)
    print("OnSubFinish1503101")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15031:OnSubStart1503102(arg1)
    print("OnSubStart1503102")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
    this:CreateLocalGadget(73019001, "1", {x = -2967.744, y = 227.993, z = 9863.855}, {x = 0, y = 29.262, z = 5.501}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73019001, "2", {x = -2969.146, y = 225.95, z = 9861.186}, {x = 349.245, y = 28.355, z = 4.71}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73019002, "3", {x = -2965.492, y = 227.294, z = 9862.614}, {x = 9.921, y = 11.5, z = 349.724}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73019002, "4", {x = -2968.116, y = 228.05, z = 9859.876}, {x = 13.099, y = 206.867, z = 2.744}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73019003, "5", {x = -2966.25, y = 226.411, z = 9860.673}, {x = 0.776, y = 194.652, z = 357.033}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73019003, "6", {x = -2969.536, y = 224.035, z = 9859.789}, {x = 331.885, y = 18.844, z = 351.474}, 3, nil, nil, true, 0, true)
    actorMgr:CreateActorWithPos("Q1503102Trigger", "Actor/Gadget/Q1503102Trigger", 70900002, 0, points._Q1503102TriggerPoint_.pos, points._Q1503102TriggerPoint_.rot, true, false, 3)
end

function Quest15031:OnSubFinish1503102(arg1)
    print("OnSubFinish1503102")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
    this:RemoveLocalGadget(73019001, "1")
    this:RemoveLocalGadget(73019001, "2")
    this:RemoveLocalGadget(73019002, "3")
    this:RemoveLocalGadget(73019002, "4")
    this:RemoveLocalGadget(73019003, "5")
    this:RemoveLocalGadget(73019003, "6")
    this:ActorDestroy("Q1503102Trigger")
end

function Quest15031:OnSubStart1503103(arg1)
    print("OnSubStart1503103")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15031:OnSubFinish1503103(arg1)
    print("OnSubFinish1503103")
end

function Quest15031:OnSubStart1503105(arg1)
    print("OnSubStart1503105")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
end

function Quest15031:OnSubFinish1503105(arg1)
    print("OnSubFinish1503105")
end

function Quest15031:OnSubStart1503104(arg1)
    print("OnSubStart1503104")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503104, 0, 40, 1.5, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15031:OnSubFinish1503104(arg1)
    print("OnSubFinish1503104")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15031:OnSubStart1503106(arg1)
    print("OnSubStart1503106")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15031:OnSubFinish1503106(arg1)
    print("OnSubFinish1503106")
end

function Quest15031:OnSubStart1503108(arg1)
    print("OnSubStart1503108")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:QuestLimitRegionTask(1503108, 3, nil, {x = -3006.271, y = 242.132, z = 9907.604}, {x = 0, y = 0, z = 0}, 1, 60, 80, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", "", nil, nil, nil)
end

function Quest15031:OnSubFinish1503108(arg1)
    print("OnSubFinish1503108")
    this:ClearQuestLimitRegionTask()
end

function Quest15031:OnSubFailed1503108(arg1)
    print("OnSubFailed1503108")
    this:ClearQuestLimitRegionTask()
end

function Quest15031:OnSubStart1503109(arg1)
    print("OnSubStart1503109")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
end

function Quest15031:OnSubFinish1503109(arg1)
    print("OnSubFinish1503109")
end

function Quest15031:OnSubStart1503107(arg1)
    print("OnSubStart1503107")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503107, 0, 80, 0.5, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15031:OnSubFinish1503107(arg1)
    print("OnSubFinish1503107")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

return Quest15031
