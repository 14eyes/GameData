require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest608 = class("Quest608", QuestActorProxy)
Quest608.defaultAlias = "Quest608"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest608:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest608:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["60805"] = self.OnSubStart60805,
        ["60801"] = self.OnSubStart60801,
        ["60802"] = self.OnSubStart60802,
        ["60803"] = self.OnSubStart60803,
        ["60804"] = self.OnSubStart60804
    }
end

function Quest608:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["60805"] = self.OnSubFinish60805,
        ["60801"] = self.OnSubFinish60801,
        ["60802"] = self.OnSubFinish60802,
        ["60803"] = self.OnSubFinish60803,
        ["60804"] = self.OnSubFinish60804
    }
end

function Quest608:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["60803"] = self.OnSubFailed60803}
end

function Quest608:Start()
    print("Start")
end

function Quest608:OnDestroy()
    print("OnDestroy")
end

function Quest608:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest608:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest608:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest608:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q60801Trigger")
end

function Quest608:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest608:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest608:OnSubStart60805(arg1)
    print("OnSubStart60805")
end

function Quest608:OnSubFinish60805(arg1)
    print("OnSubFinish60805")
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 20260)
    this:UnCallDelayByQuest("Q60803N1007CallDelay")
    this:ActorDestroy("Q60803N1007Trigger")
    this:DestroyQuestNpcActor(npcs.Lisa.alias, 20260)
    this:ActorDestroy("Q60801Trigger")
end

function Quest608:OnSubStart60801(arg1)
    print("OnSubStart60801")
    this:CreateQuestNpc(arg1, npcs.Lisa.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Razor.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q60801Trigger", "Actor/Gadget/Q60801Trigger", 70900002, 0, points._Q60801TriggerPoint_.pos, points._Q60801TriggerPoint_.rot, true, false, 20260)
end

function Quest608:OnSubFinish60801(arg1)
    print("OnSubFinish60801")
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20260)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest608:OnSubStart60802(arg1)
    print("OnSubStart60802")
end

function Quest608:OnSubFinish60802(arg1)
    print("OnSubFinish60802")
end

function Quest608:OnSubStart60803(arg1)
    print("OnSubStart60803")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(60803, 0, 30, 1, npcs.Lisa.id)
end

function Quest608:OnSubFinish60803(arg1)
    print("OnSubFinish60803")
end

function Quest608:OnSubFailed60803(arg1)
    print("OnSubFailed60803")
    this:UnCallDelayByQuest("Q60803N1007CallDelay")
    this:ActorDestroy("Q60803N1007Trigger")
    this:DestroyQuestNpcActor(npcs.Lisa.alias, 20260)
end

function Quest608:OnSubStart60804(arg1)
    print("OnSubStart60804")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Razor.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Razor.alias, 608):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Lisa.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Lisa.alias, 608):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Lisa.alias, 608):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Razor.alias, 608):DisableInteeHeadCtrl(true)
    end)
end

function Quest608:OnSubFinish60804(arg1)
    print("OnSubFinish60804")
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20260)
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 20260)
end

return Quest608
