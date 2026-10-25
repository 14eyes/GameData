require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76150 = class("Quest76150", QuestActorProxy)
Quest76150.defaultAlias = "Quest76150"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76150:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615001"] = self.OnSubStart7615001,
        ["7615003"] = self.OnSubStart7615003,
        ["7615002"] = self.OnSubStart7615002
    }
end

function Quest76150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615001"] = self.OnSubFinish7615001,
        ["7615003"] = self.OnSubFinish7615003,
        ["7615002"] = self.OnSubFinish7615002
    }
end

function Quest76150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76150:Start()
    print("Start")
end

function Quest76150:OnDestroy()
    print("OnDestroy")
end

function Quest76150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76150:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76150:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76150:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76150:OnSubStart7615001(arg1)
    print("OnSubStart7615001")
end

function Quest76150:OnSubFinish7615001(arg1)
    print("OnSubFinish7615001")
end

function Quest76150:OnSubStart7615003(arg1)
    print("OnSubStart7615003")
end

function Quest76150:OnSubFinish7615003(arg1)
    print("OnSubFinish7615003")
end

function Quest76150:OnSubStart7615002(arg1)
    print("OnSubStart7615002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7615002, 0, 60, 0, npcs.Npc22272.id)
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76150:OnSubFinish7615002(arg1)
    print("OnSubFinish7615002")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22272.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
end

return Quest76150
