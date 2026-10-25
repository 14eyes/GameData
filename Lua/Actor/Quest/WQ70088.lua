require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70088 = class("Quest70088", QuestActorProxy)
Quest70088.defaultAlias = "Quest70088"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70088:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70088:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7008801"] = self.OnSubStart7008801, ["7008802"] = self.OnSubStart7008802}
end

function Quest70088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7008801"] = self.OnSubFinish7008801, ["7008802"] = self.OnSubFinish7008802}
end

function Quest70088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70088:Start()
    print("Start")
end

function Quest70088:OnDestroy()
    print("OnDestroy")
end

function Quest70088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70088:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70088:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70088:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70088:OnSubStart7008801(arg1)
    print("OnSubStart7008801")
    this:NpcCreateWithNpcTrigger(npcs.Npc1847.id, 0, 20, 7008801)
    this:GetQuestNpcActor(npcs.Npc1825.alias, 70088):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest70088:OnSubFinish7008801(arg1)
    print("OnSubFinish7008801")
    this:NpcDestroyImmediately(103, npcs.Npc1847.alias)
end

function Quest70088:OnSubStart7008802(arg1)
    print("OnSubStart7008802")
end

function Quest70088:OnSubFinish7008802(arg1)
    print("OnSubFinish7008802")
end

return Quest70088
