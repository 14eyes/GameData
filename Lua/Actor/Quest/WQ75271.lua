require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75271 = class("Quest75271", QuestActorProxy)
Quest75271.defaultAlias = "Quest75271"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75271:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75271:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7527107"] = self.OnSubStart7527107,
        ["7527101"] = self.OnSubStart7527101,
        ["7527102"] = self.OnSubStart7527102,
        ["7527103"] = self.OnSubStart7527103,
        ["7527105"] = self.OnSubStart7527105,
        ["7527104"] = self.OnSubStart7527104,
        ["7527106"] = self.OnSubStart7527106
    }
end

function Quest75271:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7527107"] = self.OnSubFinish7527107,
        ["7527101"] = self.OnSubFinish7527101,
        ["7527102"] = self.OnSubFinish7527102,
        ["7527103"] = self.OnSubFinish7527103,
        ["7527105"] = self.OnSubFinish7527105,
        ["7527104"] = self.OnSubFinish7527104,
        ["7527106"] = self.OnSubFinish7527106
    }
end

function Quest75271:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75271:Start()
    print("Start")
end

function Quest75271:OnDestroy()
    print("OnDestroy")
end

function Quest75271:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75271:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75271:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75271:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75271:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75271:OnSubStart7527107(arg1)
    print("OnSubStart7527107")
end

function Quest75271:OnSubFinish7527107(arg1)
    print("OnSubFinish7527107")
end

function Quest75271:OnSubStart7527101(arg1)
    print("OnSubStart7527101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7527101, 0, 12, 1, npcs.Npc22032.id)
end

function Quest75271:OnSubFinish7527101(arg1)
    print("OnSubFinish7527101")
end

function Quest75271:OnSubStart7527102(arg1)
    print("OnSubStart7527102")
end

function Quest75271:OnSubFinish7527102(arg1)
    print("OnSubFinish7527102")
    this:GetQuestNpcActor(npcs.Npc22032.alias, 75271):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75271:OnSubStart7527103(arg1)
    print("OnSubStart7527103")
    this:GetQuestNpcActor(npcs.Npc22032.alias, 75271):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75271:OnSubFinish7527103(arg1)
    print("OnSubFinish7527103")
end

function Quest75271:OnSubStart7527105(arg1)
    print("OnSubStart7527105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7527105, 0, 12, 2, npcs.Npc21976.id)
end

function Quest75271:OnSubFinish7527105(arg1)
    print("OnSubFinish7527105")
end

function Quest75271:OnSubStart7527104(arg1)
    print("OnSubStart7527104")
end

function Quest75271:OnSubFinish7527104(arg1)
    print("OnSubFinish7527104")
end

function Quest75271:OnSubStart7527106(arg1)
    print("OnSubStart7527106")
end

function Quest75271:OnSubFinish7527106(arg1)
    print("OnSubFinish7527106")
end

return Quest75271
