require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5007 = class("Quest5007", QuestActorProxy)
Quest5007.defaultAlias = "Quest5007"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5007:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500701"] = self.OnSubStart500701,
        ["500702"] = self.OnSubStart500702,
        ["500708"] = self.OnSubStart500708,
        ["500703"] = self.OnSubStart500703,
        ["500704"] = self.OnSubStart500704,
        ["500707"] = self.OnSubStart500707,
        ["500705"] = self.OnSubStart500705,
        ["500706"] = self.OnSubStart500706
    }
end

function Quest5007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500701"] = self.OnSubFinish500701,
        ["500702"] = self.OnSubFinish500702,
        ["500708"] = self.OnSubFinish500708,
        ["500703"] = self.OnSubFinish500703,
        ["500704"] = self.OnSubFinish500704,
        ["500707"] = self.OnSubFinish500707,
        ["500705"] = self.OnSubFinish500705,
        ["500706"] = self.OnSubFinish500706
    }
end

function Quest5007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["500703"] = self.OnSubFailed500703}
end

function Quest5007:Start()
    print("Start")
end

function Quest5007:OnDestroy()
    print("OnDestroy")
end

function Quest5007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5007:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5007:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5007:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5007:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5007:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5007:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5007:OnSubStart500701(arg1)
    print("OnSubStart500701")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 10, 500701)
    this:CreateQuestNpc(arg1, npcs.Npc14224.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 5007):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14224.alias, 5007):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest5007:OnSubFinish500701(arg1)
    print("OnSubFinish500701")
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 1095)
end

function Quest5007:OnSubStart500702(arg1)
    print("OnSubStart500702")
end

function Quest5007:OnSubFinish500702(arg1)
    print("OnSubFinish500702")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    globalActor:PlayerEnterDungeon(2, 1219, true, datas.TextmapId, 4, true)
end

function Quest5007:OnSubStart500708(arg1)
    print("OnSubStart500708")
    actorMgr:CreateActorWithPos("Q500708TriggerTransmit", "Actor/Gadget/Q500708TriggerTransmit", 70900002, 0, points._Q500708TriggerTransmitPoint_.pos, points._Q500708TriggerTransmitPoint_.rot, true, false, 1095)
end

function Quest5007:OnSubFinish500708(arg1)
    print("OnSubFinish500708")
end

function Quest5007:OnSubStart500703(arg1)
    print("OnSubStart500703")
    actorMgr:CreateActorWithPos("Q500703TriggerWhite", "Actor/Gadget/Q500703TriggerWhite", 70900002, 0, points._Q500703TriggerWhitePoint_.pos, points._Q500703TriggerWhitePoint_.rot, true, false, 20233)
end

function Quest5007:OnSubFinish500703(arg1)
    print("OnSubFinish500703")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20233)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData500702, nil, nil, nil)
    this:ActorDestroy("Q500708TriggerTransmit")
end

function Quest5007:OnSubFailed500703(arg1)
    print("OnSubFailed500703")
    this:ActorDestroy("Q500708TriggerTransmit")
end

function Quest5007:OnSubStart500704(arg1)
    print("OnSubStart500704")
end

function Quest5007:OnSubFinish500704(arg1)
    print("OnSubFinish500704")
end

function Quest5007:OnSubStart500707(arg1)
    print("OnSubStart500707")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500707, 0, 13, 1, npcs.Npc14224.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6092.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6108.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6011.alias, true, 1)
end

function Quest5007:OnSubFinish500707(arg1)
    print("OnSubFinish500707")
    this:SafeDestroyQuestNpc(npcs.Npc14224.alias, 3)
    this:LightNotifyTo(npcs.Npc6011.alias, 0, true)
end

function Quest5007:OnSubStart500705(arg1)
    print("OnSubStart500705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 500705, 20, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6092.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6108.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
end

function Quest5007:OnSubFinish500705(arg1)
    print("OnSubFinish500705")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1099)
end

function Quest5007:OnSubStart500706(arg1)
    print("OnSubStart500706")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1089.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6092.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6108.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110500701)
    end)
end

function Quest5007:OnSubFinish500706(arg1)
    print("OnSubFinish500706")
    this:LightNotifyTo(npcs.Npc6092.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6108.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
end

return Quest5007
