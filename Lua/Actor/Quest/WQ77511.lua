require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77511 = class("Quest77511", QuestActorProxy)
Quest77511.defaultAlias = "Quest77511"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77511:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77511:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751101"] = self.OnSubStart7751101, ["7751102"] = self.OnSubStart7751102}
end

function Quest77511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751101"] = self.OnSubFinish7751101, ["7751102"] = self.OnSubFinish7751102}
end

function Quest77511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77511:Start()
    print("Start")
end

function Quest77511:OnDestroy()
    print("OnDestroy")
end

function Quest77511:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77511:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7751102N17027Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc17027.alias, 3)
    this:RecycleAllRes()
end

function Quest77511:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77511:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77511:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77511:OnSubStart7751101(arg1)
    print("OnSubStart7751101")
    this:QuestNarratorTask(datas.NarratorWithId_775010801, nil)
    actorUtils.FinishQuestWithParam({false}, {7751101})
end

function Quest77511:OnSubFinish7751101(arg1)
    print("OnSubFinish7751101")
end

function Quest77511:OnSubStart7751102(arg1)
    print("OnSubStart7751102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7751102, 0, 10, 0.5, npcs.Npc17027.id)
end

function Quest77511:OnSubFinish7751102(arg1)
    print("OnSubFinish7751102")
    this:NpcDestroyImmediately(3, npcs.Npc17027.alias)
    this:ClearNarratorTask()
end

return Quest77511
