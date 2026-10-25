require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10004 = class("Quest10004", QuestActorProxy)
Quest10004.defaultAlias = "Quest10004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest10004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest10004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000401"] = self.OnSubStart1000401,
        ["1000404"] = self.OnSubStart1000404,
        ["1000402"] = self.OnSubStart1000402,
        ["1000403"] = self.OnSubStart1000403,
        ["1000405"] = self.OnSubStart1000405,
        ["1000407"] = self.OnSubStart1000407,
        ["1000406"] = self.OnSubStart1000406
    }
end

function Quest10004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000401"] = self.OnSubFinish1000401,
        ["1000404"] = self.OnSubFinish1000404,
        ["1000402"] = self.OnSubFinish1000402,
        ["1000403"] = self.OnSubFinish1000403,
        ["1000405"] = self.OnSubFinish1000405,
        ["1000407"] = self.OnSubFinish1000407,
        ["1000406"] = self.OnSubFinish1000406
    }
end

function Quest10004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1000402"] = self.OnSubFailed1000402, ["1000406"] = self.OnSubFailed1000406}
end

function Quest10004:Start()
    print("Start")
end

function Quest10004:OnDestroy()
    print("OnDestroy")
end

function Quest10004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10004:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000401Trigger")
    this:ActorDestroy("Q1000403Trigger")
    this:ActorDestroy("Q1000405Trigger")
end

function Quest10004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10004:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest10004:OnSubStart1000401(arg1)
    print("OnSubStart1000401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000401, 0, 10, 1, npcs.Npc10095.id)
end

function Quest10004:OnSubFinish1000401(arg1)
    print("OnSubFinish1000401")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc10095.alias)
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1798, 1278, 1000401, 1, datas.TransmitData1000401, nil, nil)
    end)
end

function Quest10004:OnSubStart1000404(arg1)
    print("OnSubStart1000404")
end

function Quest10004:OnSubFinish1000404(arg1)
    print("OnSubFinish1000404")
end

function Quest10004:OnSubStart1000402(arg1)
    print("OnSubStart1000402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000402, 0, 10, 1, npcs.Npc10095.id)
end

function Quest10004:OnSubFinish1000402(arg1)
    print("OnSubFinish1000402")
    this:SafeDestroyQuestNpc(npcs.Npc10095.alias, 20300)
end

function Quest10004:OnSubFailed1000402(arg1)
    print("OnSubFailed1000402")
    this:DestroyQuestNpcActor(npcs.Npc10095.alias, 20300)
    this:ClearNpcTriggerByQuestId(1000402)
end

function Quest10004:OnSubStart1000403(arg1)
    print("OnSubStart1000403")
end

function Quest10004:OnSubFinish1000403(arg1)
    print("OnSubFinish1000403")
end

function Quest10004:OnSubStart1000405(arg1)
    print("OnSubStart1000405")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1000401, nil)
    end)
end

function Quest10004:OnSubFinish1000405(arg1)
    print("OnSubFinish1000405")
end

function Quest10004:OnSubStart1000407(arg1)
    print("OnSubStart1000407")
end

function Quest10004:OnSubFinish1000407(arg1)
    print("OnSubFinish1000407")
end

function Quest10004:OnSubStart1000406(arg1)
    print("OnSubStart1000406")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000406, 0, 30, 1, npcs.Npc10095.id)
end

function Quest10004:OnSubFinish1000406(arg1)
    print("OnSubFinish1000406")
    this:NpcDestroyWithAfterIntercall(20300, npcs.Npc10095.alias)
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000041)
    end)
end

function Quest10004:OnSubFailed1000406(arg1)
    print("OnSubFailed1000406")
    this:DestroyQuestNpcActor(npcs.Npc10095.alias, 20300)
    this:ClearNpcTriggerByQuestId(1000406)
end

return Quest10004
