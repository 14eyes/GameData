require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15036 = class("Quest15036", QuestActorProxy)
Quest15036.defaultAlias = "Quest15036"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15036:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503601"] = self.OnSubStart1503601,
        ["1503607"] = self.OnSubStart1503607,
        ["1503602"] = self.OnSubStart1503602,
        ["1503608"] = self.OnSubStart1503608,
        ["1503603"] = self.OnSubStart1503603,
        ["1503604"] = self.OnSubStart1503604,
        ["1503605"] = self.OnSubStart1503605,
        ["1503610"] = self.OnSubStart1503610,
        ["1503609"] = self.OnSubStart1503609,
        ["1503606"] = self.OnSubStart1503606
    }
end

function Quest15036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503601"] = self.OnSubFinish1503601,
        ["1503607"] = self.OnSubFinish1503607,
        ["1503602"] = self.OnSubFinish1503602,
        ["1503608"] = self.OnSubFinish1503608,
        ["1503603"] = self.OnSubFinish1503603,
        ["1503604"] = self.OnSubFinish1503604,
        ["1503605"] = self.OnSubFinish1503605,
        ["1503610"] = self.OnSubFinish1503610,
        ["1503609"] = self.OnSubFinish1503609,
        ["1503606"] = self.OnSubFinish1503606
    }
end

function Quest15036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1503602"] = self.OnSubFailed1503602, ["1503603"] = self.OnSubFailed1503603}
end

function Quest15036:Start()
    print("Start")
end

function Quest15036:OnDestroy()
    print("OnDestroy")
end

function Quest15036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15036:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1503607Trigger")
    this:ActorDestroy("Q1503605Trigger")
end

function Quest15036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15036:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15036:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15036:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15036:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15036:OnSubStart1503601(arg1)
    print("OnSubStart1503601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503601, 0, 10, 1, npcs.Npc1311.id)
end

function Quest15036:OnSubFinish1503601(arg1)
    print("OnSubFinish1503601")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 3)
    this:ClearNarratorTask()
end

function Quest15036:OnSubStart1503607(arg1)
    print("OnSubStart1503607")
end

function Quest15036:OnSubFinish1503607(arg1)
    print("OnSubFinish1503607")
end

function Quest15036:OnSubStart1503602(arg1)
    print("OnSubStart1503602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503602, 0, 15, 1, npcs.Npc1311.id)
end

function Quest15036:OnSubFinish1503602(arg1)
    print("OnSubFinish1503602")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 20272)
end

function Quest15036:OnSubFailed1503602(arg1)
    print("OnSubFailed1503602")
    this:DestroyNpcTrigger("Q1503602N1311Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1311.alias, 20272)
end

function Quest15036:OnSubStart1503608(arg1)
    print("OnSubStart1503608")
end

function Quest15036:OnSubFinish1503608(arg1)
    print("OnSubFinish1503608")
end

function Quest15036:OnSubStart1503603(arg1)
    print("OnSubStart1503603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503603, 0, 49, 1, npcs.Npc13790.id)
end

function Quest15036:OnSubFinish1503603(arg1)
    print("OnSubFinish1503603")
    this:SafeDestroyQuestNpc(npcs.Npc13790.alias, 20272)
end

function Quest15036:OnSubFailed1503603(arg1)
    print("OnSubFailed1503603")
    this:DestroyNpcTrigger("Q1503603N13790Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc13790.alias, 20272)
end

function Quest15036:OnSubStart1503604(arg1)
    print("OnSubStart1503604")
end

function Quest15036:OnSubFinish1503604(arg1)
    print("OnSubFinish1503604")
end

function Quest15036:OnSubStart1503605(arg1)
    print("OnSubStart1503605")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc13790.id, 0, 1503605, 40, true)
    actorMgr:CreateActorWithPos("Q1503605Trigger", "Actor/Gadget/Q1503605Trigger", 70900002, 0, points._Q1503605TriggerPoint_.pos, points._Q1503605TriggerPoint_.rot, true, false, 20272)
end

function Quest15036:OnSubFinish1503605(arg1)
    print("OnSubFinish1503605")
    this:ActorDestroy("Q1503605Trigger")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1503602, nil)
    end)
end

function Quest15036:OnSubStart1503610(arg1)
    print("OnSubStart1503610")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc13790.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13790.alias, 15036):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc13790.alias, 15036):DisableInteeHeadCtrl(true)
    end)
end

function Quest15036:OnSubFinish1503610(arg1)
    print("OnSubFinish1503610")
    this:NpcDestroyImmediately(3, npcs.Npc13790.alias)
end

function Quest15036:OnSubStart1503609(arg1)
    print("OnSubStart1503609")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1068.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1068.alias, 15036):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1068.alias, 15036):DisableInteeHeadCtrl(true)
    end)
end

function Quest15036:OnSubFinish1503609(arg1)
    print("OnSubFinish1503609")
    this:ClearNarratorTask()
end

function Quest15036:OnSubStart1503606(arg1)
    print("OnSubStart1503606")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc13790.id, 0, 1503606, 49, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15036):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 15036):DisableInteeHeadCtrl(true)
end

function Quest15036:OnSubFinish1503606(arg1)
    print("OnSubFinish1503606")
    this:NpcDestroyImmediately(1082, npcs.Npc13790.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
end

return Quest15036
