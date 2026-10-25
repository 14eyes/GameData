require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15024 = class("Quest15024", QuestActorProxy)
Quest15024.defaultAlias = "Quest15024"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15024:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502408"] = self.OnSubStart1502408,
        ["1502401"] = self.OnSubStart1502401,
        ["1502402"] = self.OnSubStart1502402,
        ["1502403"] = self.OnSubStart1502403,
        ["1502404"] = self.OnSubStart1502404,
        ["1502405"] = self.OnSubStart1502405,
        ["1502409"] = self.OnSubStart1502409,
        ["1502410"] = self.OnSubStart1502410,
        ["1502415"] = self.OnSubStart1502415,
        ["1502412"] = self.OnSubStart1502412,
        ["1502413"] = self.OnSubStart1502413,
        ["1502411"] = self.OnSubStart1502411,
        ["1502414"] = self.OnSubStart1502414,
        ["1502406"] = self.OnSubStart1502406,
        ["1502407"] = self.OnSubStart1502407
    }
end

function Quest15024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502408"] = self.OnSubFinish1502408,
        ["1502401"] = self.OnSubFinish1502401,
        ["1502402"] = self.OnSubFinish1502402,
        ["1502403"] = self.OnSubFinish1502403,
        ["1502404"] = self.OnSubFinish1502404,
        ["1502405"] = self.OnSubFinish1502405,
        ["1502409"] = self.OnSubFinish1502409,
        ["1502410"] = self.OnSubFinish1502410,
        ["1502415"] = self.OnSubFinish1502415,
        ["1502412"] = self.OnSubFinish1502412,
        ["1502413"] = self.OnSubFinish1502413,
        ["1502411"] = self.OnSubFinish1502411,
        ["1502414"] = self.OnSubFinish1502414,
        ["1502406"] = self.OnSubFinish1502406,
        ["1502407"] = self.OnSubFinish1502407
    }
end

function Quest15024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1502402"] = self.OnSubFailed1502402}
end

function Quest15024:Start()
    print("Start")
end

function Quest15024:OnDestroy()
    print("OnDestroy")
end

function Quest15024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15024:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15024:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15024:OnSubStart1502408(arg1)
    print("OnSubStart1502408")
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15024:OnSubFinish1502408(arg1)
    print("OnSubFinish1502408")
end

function Quest15024:OnSubStart1502401(arg1)
    print("OnSubStart1502401")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21674.id, 0, 1502401, 12, false)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15024:OnSubFinish1502401(arg1)
    print("OnSubFinish1502401")
    this:SafeDestroyQuestNpc(npcs.Npc21674.alias, 3)
    this:ActorDestroy("Q1502401_Trigger")
    this:SetNavigationByMainId(15024, true)
end

function Quest15024:OnSubStart1502402(arg1)
    print("OnSubStart1502402")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21674.id, 0, 1502402, 10, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6211.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502402_Trigger2", "Actor/Gadget/Q1502402_Trigger2", 70900002, 0, points._Q1502402_Trigger2Point_.pos, points._Q1502402_Trigger2Point_.rot, true, false, nil)
    this:CreateLocalGadget(73005291, "1502402", {x = -1587.157, y = 174.332, z = 9693.717}, {x = 6.152, y = 68.013, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest15024:OnSubFinish1502402(arg1)
    print("OnSubFinish1502402")
    this:SafeDestroyQuestNpc(npcs.Npc21674.alias, 3)
    this:ActorDestroy("Q1502402_Trigger")
    this:RemoveLocalGadget(73005291, "1502402")
    this:ActorDestroy("Q1502402_Trigger2")
end

function Quest15024:OnSubFailed1502402(arg1)
    print("OnSubFailed1502402")
    this:ActorDestroy("Q1502402_Trigger")
end

function Quest15024:OnSubStart1502403(arg1)
    print("OnSubStart1502403")
    this:CreateQuestNpc(arg1, npcs.Npc6249.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6209.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6216.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502403_Trigger", "Actor/Gadget/Q1502403_Trigger", 70900002, 0, points._Q1502403_TriggerPoint_.pos, points._Q1502403_TriggerPoint_.rot, true, false, 3)
    this:CreateLocalGadget(73005291, "1502402", {x = -1587.157, y = 174.332, z = 9693.717}, {x = 6.152, y = 68.013, z = 0}, 3, nil, nil, false, 201, true)
end

function Quest15024:OnSubFinish1502403(arg1)
    print("OnSubFinish1502403")
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:RemoveLocalGadget(73005291, "1502402")
end

function Quest15024:OnSubStart1502404(arg1)
    print("OnSubStart1502404")
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15018.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1502404_Trigger", "Actor/Gadget/Q1502404_Trigger", 70900002, 0, points._Q1502404_TriggerPoint_.pos, points._Q1502404_TriggerPoint_.rot, true, false, 3)
end

function Quest15024:OnSubFinish1502404(arg1)
    print("OnSubFinish1502404")
end

function Quest15024:OnSubStart1502405(arg1)
    print("OnSubStart1502405")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc15018.id, 0, 1502405, 15, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
end

function Quest15024:OnSubFinish1502405(arg1)
    print("OnSubFinish1502405")
    this:SafeDestroyQuestNpc(npcs.Npc15018.alias, 3)
end

function Quest15024:OnSubStart1502409(arg1)
    print("OnSubStart1502409")
    this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    this:LightNotifyTo(npcs.Npc6251.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1502409_Trigger", "Actor/Gadget/Q1502409_Trigger", 70900002, 0, points._Q1502409_TriggerPoint_.pos, points._Q1502409_TriggerPoint_.rot, true, false, 20247)
end

function Quest15024:OnSubFinish1502409(arg1)
    print("OnSubFinish1502409")
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
end

function Quest15024:OnSubStart1502410(arg1)
    print("OnSubStart1502410")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21674.id, 0, 1502410, 60, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502410(arg1)
    print("OnSubFinish1502410")
    this:SafeDestroyQuestNpc(npcs.Npc21674.alias, 20247)
end

function Quest15024:OnSubStart1502415(arg1)
    print("OnSubStart1502415")
    this:CreateQuestNpc(arg1, npcs.Npc21747.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21748.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21749.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502415(arg1)
    print("OnSubFinish1502415")
end

function Quest15024:OnSubStart1502412(arg1)
    print("OnSubStart1502412")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502412(arg1)
    print("OnSubFinish1502412")
end

function Quest15024:OnSubStart1502413(arg1)
    print("OnSubStart1502413")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502413(arg1)
    print("OnSubFinish1502413")
end

function Quest15024:OnSubStart1502411(arg1)
    print("OnSubStart1502411")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502411(arg1)
    print("OnSubFinish1502411")
end

function Quest15024:OnSubStart1502414(arg1)
    print("OnSubStart1502414")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21674.id, 0, 1502414, 50, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    this:RequestInteraction(npcs.Npc21674.alias, "", true)
end

function Quest15024:OnSubFinish1502414(arg1)
    print("OnSubFinish1502414")
    this:SafeDestroyQuestNpc(npcs.Npc21674.alias, 20247)
    this:SafeDestroyQuestNpc(npcs.Npc21747.alias, 20247)
    this:SafeDestroyQuestNpc(npcs.Npc21748.alias, 20247)
    this:SafeDestroyQuestNpc(npcs.Npc21749.alias, 20247)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(2006, nil)
    end)
end

function Quest15024:OnSubStart1502406(arg1)
    print("OnSubStart1502406")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
end

function Quest15024:OnSubFinish1502406(arg1)
    print("OnSubFinish1502406")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest15024:OnSubStart1502407(arg1)
    print("OnSubStart1502407")
    this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502407_Trigger", "Actor/Gadget/Q1502407_Trigger", 70900002, 0, points._Q1502407_TriggerPoint_.pos, points._Q1502407_TriggerPoint_.rot, true, false, nil)
end

function Quest15024:OnSubFinish1502407(arg1)
    print("OnSubFinish1502407")
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
end

return Quest15024
