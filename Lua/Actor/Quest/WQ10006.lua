require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10006 = class("Quest10006", QuestActorProxy)
Quest10006.defaultAlias = "Quest10006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest10006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest10006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000601"] = self.OnSubStart1000601,
        ["1000607"] = self.OnSubStart1000607,
        ["1000609"] = self.OnSubStart1000609,
        ["1000602"] = self.OnSubStart1000602,
        ["1000608"] = self.OnSubStart1000608,
        ["1000603"] = self.OnSubStart1000603,
        ["1000604"] = self.OnSubStart1000604,
        ["1000605"] = self.OnSubStart1000605,
        ["1000610"] = self.OnSubStart1000610,
        ["1000606"] = self.OnSubStart1000606
    }
end

function Quest10006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000601"] = self.OnSubFinish1000601,
        ["1000607"] = self.OnSubFinish1000607,
        ["1000609"] = self.OnSubFinish1000609,
        ["1000602"] = self.OnSubFinish1000602,
        ["1000608"] = self.OnSubFinish1000608,
        ["1000603"] = self.OnSubFinish1000603,
        ["1000604"] = self.OnSubFinish1000604,
        ["1000605"] = self.OnSubFinish1000605,
        ["1000610"] = self.OnSubFinish1000610,
        ["1000606"] = self.OnSubFinish1000606
    }
end

function Quest10006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1000602"] = self.OnSubFailed1000602, ["1000606"] = self.OnSubFailed1000606}
end

function Quest10006:Start()
    print("Start")
end

function Quest10006:OnDestroy()
    print("OnDestroy")
end

function Quest10006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10006:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000602Trigger")
    this:ActorDestroy("Q1000607Trigger")
end

function Quest10006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10006:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest10006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest10006:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest10006:OnSubStart1000601(arg1)
    print("OnSubStart1000601")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000601, 0, 60, 1, npcs.Npc2624.id)
end

function Quest10006:OnSubFinish1000601(arg1)
    print("OnSubFinish1000601")
    this:NpcDestroyWithAfterIntercall(1004, npcs.Npc2624.alias)
end

function Quest10006:OnSubStart1000607(arg1)
    print("OnSubStart1000607")
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1797, 1280, 1000601, 1, datas.PlayerEnterDungeonData_10006, nil, nil)
    end)
end

function Quest10006:OnSubFinish1000607(arg1)
    print("OnSubFinish1000607")
end

function Quest10006:OnSubStart1000609(arg1)
    print("OnSubStart1000609")
end

function Quest10006:OnSubFinish1000609(arg1)
    print("OnSubFinish1000609")
end

function Quest10006:OnSubStart1000602(arg1)
    print("OnSubStart1000602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc2624.id, 0, 1000602, 30, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15861.id, arg1)
end

function Quest10006:OnSubFinish1000602(arg1)
    print("OnSubFinish1000602")
    this:SafeDestroyQuestNpc(npcs.Npc2624.alias, 20302)
end

function Quest10006:OnSubFailed1000602(arg1)
    print("OnSubFailed1000602")
    this:DestroyQuestNpcActor(npcs.Npc2624.alias, 20302)
    this:DestroyQuestNpcActor(npcs.Npc15861.alias, 20302)
    this:ClearNpcTriggerByQuestId(1000602)
end

function Quest10006:OnSubStart1000608(arg1)
    print("OnSubStart1000608")
end

function Quest10006:OnSubFinish1000608(arg1)
    print("OnSubFinish1000608")
end

function Quest10006:OnSubStart1000603(arg1)
    print("OnSubStart1000603")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000601, nil)
    end)
end

function Quest10006:OnSubFinish1000603(arg1)
    print("OnSubFinish1000603")
end

function Quest10006:OnSubStart1000604(arg1)
    print("OnSubStart1000604")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000602, nil)
    end)
end

function Quest10006:OnSubFinish1000604(arg1)
    print("OnSubFinish1000604")
end

function Quest10006:OnSubStart1000605(arg1)
    print("OnSubStart1000605")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000603, nil)
    end)
end

function Quest10006:OnSubFinish1000605(arg1)
    print("OnSubFinish1000605")
end

function Quest10006:OnSubStart1000610(arg1)
    print("OnSubStart1000610")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15861.id, arg1)
end

function Quest10006:OnSubFinish1000610(arg1)
    print("OnSubFinish1000610")
end

function Quest10006:OnSubStart1000606(arg1)
    print("OnSubStart1000606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000606, 0, 50, 1, npcs.Npc2624.id)
end

function Quest10006:OnSubFinish1000606(arg1)
    print("OnSubFinish1000606")
    this:NpcDestroyWithAfterIntercall(20302, npcs.Npc2624.alias)
    this:NpcDestroyWithAfterIntercall(20302, npcs.Npc15861.alias)
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000123)
    end)
end

function Quest10006:OnSubFailed1000606(arg1)
    print("OnSubFailed1000606")
    this:DestroyQuestNpcActor(npcs.Npc2624.alias, 20302)
    this:ClearNpcTriggerByQuestId(1000606)
end

return Quest10006
