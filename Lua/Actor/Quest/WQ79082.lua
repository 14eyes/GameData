require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79082 = class("Quest79082", QuestActorProxy)
Quest79082.defaultAlias = "Quest79082"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79082:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7908201"] = self.OnSubStart7908201,
        ["7908202"] = self.OnSubStart7908202,
        ["7908203"] = self.OnSubStart7908203
    }
end

function Quest79082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7908201"] = self.OnSubFinish7908201,
        ["7908202"] = self.OnSubFinish7908202,
        ["7908203"] = self.OnSubFinish7908203
    }
end

function Quest79082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79082:Start()
    print("Start")
end

function Quest79082:OnDestroy()
    print("OnDestroy")
end

function Quest79082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79082:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest79082:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79082:OnSubStart7908201(arg1)
    print("OnSubStart7908201")
    this:CreateQuestNpc(arg1, npcs.Npc21624Data.id, 0, false, 0)
end

function Quest79082:OnSubFinish7908201(arg1)
    print("OnSubFinish7908201")
end

function Quest79082:OnSubStart7908202(arg1)
    print("OnSubStart7908202")
end

function Quest79082:OnSubFinish7908202(arg1)
    print("OnSubFinish7908202")
end

function Quest79082:OnSubStart7908203(arg1)
    print("OnSubStart7908203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21624Data.id, 7908203, 0, 15, 1)
end

function Quest79082:OnSubFinish7908203(arg1)
    print("OnSubFinish7908203")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21624Data.alias)
end

return Quest79082
