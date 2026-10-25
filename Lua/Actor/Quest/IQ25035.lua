require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25035 = class("Quest25035", QuestActorProxy)
Quest25035.defaultAlias = "Quest25035"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503501"] = self.OnSubStart2503501,
        ["2503502"] = self.OnSubStart2503502,
        ["2503503"] = self.OnSubStart2503503,
        ["2503504"] = self.OnSubStart2503504,
        ["2503505"] = self.OnSubStart2503505,
        ["2503506"] = self.OnSubStart2503506,
        ["2503507"] = self.OnSubStart2503507,
        ["2503508"] = self.OnSubStart2503508
    }
end

function Quest25035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503501"] = self.OnSubFinish2503501,
        ["2503502"] = self.OnSubFinish2503502,
        ["2503503"] = self.OnSubFinish2503503,
        ["2503504"] = self.OnSubFinish2503504,
        ["2503505"] = self.OnSubFinish2503505,
        ["2503506"] = self.OnSubFinish2503506,
        ["2503507"] = self.OnSubFinish2503507,
        ["2503508"] = self.OnSubFinish2503508
    }
end

function Quest25035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25035:Start()
    print("Start")
end

function Quest25035:OnDestroy()
    print("OnDestroy")
end

function Quest25035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25035:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6101.alias, 3)
    this:DestroyNpcTrigger("Q2503502N1005Trigger")
    this:GetQuestNpcActor(npcs.Paimon.alias, 25035):DestroyWithDisappear(false, nil)
end

function Quest25035:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25035:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25035:OnSubStart2503501(arg1)
    print("OnSubStart2503501")
    this:CreateQuestNpc(arg1, npcs.Npc6101.id, 0, false, 0)
end

function Quest25035:OnSubFinish2503501(arg1)
    print("OnSubFinish2503501")
end

function Quest25035:OnSubStart2503502(arg1)
    print("OnSubStart2503502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2503502, 0, 20, 1, npcs.Paimon.id)
end

function Quest25035:OnSubFinish2503502(arg1)
    print("OnSubFinish2503502")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Paimon.alias, 25035):DestroyWithDisappear(false, nil)
    end)
end

function Quest25035:OnSubStart2503503(arg1)
    print("OnSubStart2503503")
end

function Quest25035:OnSubFinish2503503(arg1)
    print("OnSubFinish2503503")
end

function Quest25035:OnSubStart2503504(arg1)
    print("OnSubStart2503504")
end

function Quest25035:OnSubFinish2503504(arg1)
    print("OnSubFinish2503504")
end

function Quest25035:OnSubStart2503505(arg1)
    print("OnSubStart2503505")
end

function Quest25035:OnSubFinish2503505(arg1)
    print("OnSubFinish2503505")
end

function Quest25035:OnSubStart2503506(arg1)
    print("OnSubStart2503506")
end

function Quest25035:OnSubFinish2503506(arg1)
    print("OnSubFinish2503506")
end

function Quest25035:OnSubStart2503507(arg1)
    print("OnSubStart2503507")
    this:CreateQuestNpc(arg1, npcs.Npc6101.id, 0, false, 0)
end

function Quest25035:OnSubFinish2503507(arg1)
    print("OnSubFinish2503507")
end

function Quest25035:OnSubStart2503508(arg1)
    print("OnSubStart2503508")
end

function Quest25035:OnSubFinish2503508(arg1)
    print("OnSubFinish2503508")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6101.alias)
end

return Quest25035
