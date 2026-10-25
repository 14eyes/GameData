require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71135 = class("Quest71135", QuestActorProxy)
Quest71135.defaultAlias = "Quest71135"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71135:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71135:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7113501"] = self.OnSubStart7113501, ["7113502"] = self.OnSubStart7113502}
end

function Quest71135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7113501"] = self.OnSubFinish7113501, ["7113502"] = self.OnSubFinish7113502}
end

function Quest71135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71135:Start()
    print("Start")
end

function Quest71135:OnDestroy()
    print("OnDestroy")
end

function Quest71135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71135:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest71135:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest71135:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71135:OnSubStart7113501(arg1)
    print("OnSubStart7113501")
end

function Quest71135:OnSubFinish7113501(arg1)
    print("OnSubFinish7113501")
end

function Quest71135:OnSubStart7113502(arg1)
    print("OnSubStart7113502")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21094Data.id, 7113502, 0, 15, 0.5, true)
    end)
end

function Quest71135:OnSubFinish7113502(arg1)
    print("OnSubFinish7113502")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21094Data.alias)
end

return Quest71135
