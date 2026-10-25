require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15025 = class("Quest15025", QuestActorProxy)
Quest15025.defaultAlias = "Quest15025"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502521"] = self.OnSubStart1502521,
        ["1502510"] = self.OnSubStart1502510,
        ["1502501"] = self.OnSubStart1502501,
        ["1502502"] = self.OnSubStart1502502,
        ["1502503"] = self.OnSubStart1502503,
        ["1502505"] = self.OnSubStart1502505,
        ["1502504"] = self.OnSubStart1502504,
        ["1502506"] = self.OnSubStart1502506,
        ["1502517"] = self.OnSubStart1502517,
        ["1502518"] = self.OnSubStart1502518,
        ["1502519"] = self.OnSubStart1502519,
        ["1502520"] = self.OnSubStart1502520,
        ["1502507"] = self.OnSubStart1502507,
        ["1502516"] = self.OnSubStart1502516,
        ["1502508"] = self.OnSubStart1502508,
        ["1502509"] = self.OnSubStart1502509,
        ["1502515"] = self.OnSubStart1502515,
        ["1502511"] = self.OnSubStart1502511,
        ["1502512"] = self.OnSubStart1502512,
        ["1502513"] = self.OnSubStart1502513,
        ["1502514"] = self.OnSubStart1502514
    }
end

function Quest15025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502521"] = self.OnSubFinish1502521,
        ["1502510"] = self.OnSubFinish1502510,
        ["1502501"] = self.OnSubFinish1502501,
        ["1502502"] = self.OnSubFinish1502502,
        ["1502503"] = self.OnSubFinish1502503,
        ["1502505"] = self.OnSubFinish1502505,
        ["1502504"] = self.OnSubFinish1502504,
        ["1502506"] = self.OnSubFinish1502506,
        ["1502517"] = self.OnSubFinish1502517,
        ["1502518"] = self.OnSubFinish1502518,
        ["1502519"] = self.OnSubFinish1502519,
        ["1502520"] = self.OnSubFinish1502520,
        ["1502507"] = self.OnSubFinish1502507,
        ["1502516"] = self.OnSubFinish1502516,
        ["1502508"] = self.OnSubFinish1502508,
        ["1502509"] = self.OnSubFinish1502509,
        ["1502515"] = self.OnSubFinish1502515,
        ["1502511"] = self.OnSubFinish1502511,
        ["1502512"] = self.OnSubFinish1502512,
        ["1502513"] = self.OnSubFinish1502513,
        ["1502514"] = self.OnSubFinish1502514
    }
end

function Quest15025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15025:Start()
    print("Start")
end

function Quest15025:OnDestroy()
    print("OnDestroy")
end

function Quest15025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc6252.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21678.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 1200)
    this:ActorDestroy("Q1502502_trigger")
    this:ActorDestroy("Q1502504_trigger")
    this:ActorDestroy("Q1502505_trigger")
    this:ActorDestroy("Q1502511_trigger")
    this:ActorDestroy("Q1502513_trigger")
end

function Quest15025:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15025:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15025:OnSubStart1502521(arg1)
    print("OnSubStart1502521")
end

function Quest15025:OnSubFinish1502521(arg1)
    print("OnSubFinish1502521")
end

function Quest15025:OnSubStart1502510(arg1)
    print("OnSubStart1502510")
end

function Quest15025:OnSubFinish1502510(arg1)
    print("OnSubFinish1502510")
end

function Quest15025:OnSubStart1502501(arg1)
    print("OnSubStart1502501")
    this:CreateQuestNpc(arg1, npcs.Npc6252.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6250.id, 0, false, 0)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15025:OnSubFinish1502501(arg1)
    print("OnSubFinish1502501")
    this:SafeDestroyQuestNpc(npcs.Npc6252.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 3)
    this:SetNavigationByMainId(15025, true)
end

function Quest15025:OnSubStart1502502(arg1)
    print("OnSubStart1502502")
    this:DailyNpcSafeHideSelf(npcs.Npc6252.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502502_trigger", "Actor/Gadget/Q1502502_trigger", 70900002, 0, points._Q1502502_triggerPoint_.pos, points._Q1502502_triggerPoint_.rot, true, false, 3)
end

function Quest15025:OnSubFinish1502502(arg1)
    print("OnSubFinish1502502")
end

function Quest15025:OnSubStart1502503(arg1)
    print("OnSubStart1502503")
    this:CreateQuestNpc(arg1, npcs.Npc6252.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc6252.alias, "", true)
end

function Quest15025:OnSubFinish1502503(arg1)
    print("OnSubFinish1502503")
end

function Quest15025:OnSubStart1502505(arg1)
    print("OnSubStart1502505")
    this:CreateQuestNpc(arg1, npcs.Npc6252.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1502505_trigger", "Actor/Gadget/Q1502505_trigger", 70900002, 0, points._Q1502505_triggerPoint_.pos, points._Q1502505_triggerPoint_.rot, true, false, 3)
end

function Quest15025:OnSubFinish1502505(arg1)
    print("OnSubFinish1502505")
end

function Quest15025:OnSubStart1502504(arg1)
    print("OnSubStart1502504")
    this:CreateQuestNpc(arg1, npcs.Npc6252.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1502504_trigger", "Actor/Gadget/Q1502504_trigger", 70900002, 0, points._Q1502504_triggerPoint_.pos, points._Q1502504_triggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1502505_trigger2", "Actor/Gadget/Q1502505_trigger2", 70900002, 0, points._Q1502505_trigger2Point_.pos, points._Q1502505_trigger2Point_.rot, true, false, nil)
end

function Quest15025:OnSubFinish1502504(arg1)
    print("OnSubFinish1502504")
end

function Quest15025:OnSubStart1502506(arg1)
    print("OnSubStart1502506")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21678.id, 0, 1502506, 8, false)
    this:RequestInteraction(npcs.Npc21678.alias, "", true)
end

function Quest15025:OnSubFinish1502506(arg1)
    print("OnSubFinish1502506")
    this:SafeDestroyQuestNpc(npcs.Npc21678.alias, 3)
end

function Quest15025:OnSubStart1502517(arg1)
    print("OnSubStart1502517")
end

function Quest15025:OnSubFinish1502517(arg1)
    print("OnSubFinish1502517")
end

function Quest15025:OnSubStart1502518(arg1)
    print("OnSubStart1502518")
end

function Quest15025:OnSubFinish1502518(arg1)
    print("OnSubFinish1502518")
end

function Quest15025:OnSubStart1502519(arg1)
    print("OnSubStart1502519")
end

function Quest15025:OnSubFinish1502519(arg1)
    print("OnSubFinish1502519")
end

function Quest15025:OnSubStart1502520(arg1)
    print("OnSubStart1502520")
end

function Quest15025:OnSubFinish1502520(arg1)
    print("OnSubFinish1502520")
end

function Quest15025:OnSubStart1502507(arg1)
    print("OnSubStart1502507")
end

function Quest15025:OnSubFinish1502507(arg1)
    print("OnSubFinish1502507")
end

function Quest15025:OnSubStart1502516(arg1)
    print("OnSubStart1502516")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21678.id, 0, 1502516, 30, false)
    this:RequestInteraction(npcs.Npc21678.alias, "", true)
end

function Quest15025:OnSubFinish1502516(arg1)
    print("OnSubFinish1502516")
    this:SafeDestroyQuestNpc(npcs.Npc21678.alias, 3)
end

function Quest15025:OnSubStart1502508(arg1)
    print("OnSubStart1502508")
end

function Quest15025:OnSubFinish1502508(arg1)
    print("OnSubFinish1502508")
    this:SafeDestroyQuestNpc(npcs.Npc6252.alias, 3)
end

function Quest15025:OnSubStart1502509(arg1)
    print("OnSubStart1502509")
    this:CreateQuestNpc(arg1, npcs.Npc6250.id, 0, false, 0)
end

function Quest15025:OnSubFinish1502509(arg1)
    print("OnSubFinish1502509")
end

function Quest15025:OnSubStart1502515(arg1)
    print("OnSubStart1502515")
    this:RequestInteraction(npcs.Npc6250.alias, "", true)
end

function Quest15025:OnSubFinish1502515(arg1)
    print("OnSubFinish1502515")
    this:SafeDestroyQuestNpc(npcs.Npc6250.alias, 3)
end

function Quest15025:OnSubStart1502511(arg1)
    print("OnSubStart1502511")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502511_trigger", "Actor/Gadget/Q1502511_trigger", 70900002, 0, points._Q1502511_triggerPoint_.pos, points._Q1502511_triggerPoint_.rot, true, false, 1200)
end

function Quest15025:OnSubFinish1502511(arg1)
    print("OnSubFinish1502511")
end

function Quest15025:OnSubStart1502512(arg1)
    print("OnSubStart1502512")
    this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    this:RequestInteraction(npcs.Npc14918.alias, "", true)
    this:BanCrowdNpc(1200, 1, nil, true)
end

function Quest15025:OnSubFinish1502512(arg1)
    print("OnSubFinish1502512")
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 1200)
    this:BanCrowdNpc(1200, 1, nil, false)
end

function Quest15025:OnSubStart1502513(arg1)
    print("OnSubStart1502513")
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1502513_trigger", "Actor/Gadget/Q1502513_trigger", 70900002, 0, points._Q1502513_triggerPoint_.pos, points._Q1502513_triggerPoint_.rot, true, false, 3)
end

function Quest15025:OnSubFinish1502513(arg1)
    print("OnSubFinish1502513")
end

function Quest15025:OnSubStart1502514(arg1)
    print("OnSubStart1502514")
    this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    this:RequestInteraction(npcs.Npc14918.alias, "", true)
end

function Quest15025:OnSubFinish1502514(arg1)
    print("OnSubFinish1502514")
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
end

return Quest15025
