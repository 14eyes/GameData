require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70683 = class("Quest70683", QuestActorProxy)
Quest70683.defaultAlias = "Quest70683"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70683:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70683:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068301"] = self.OnSubStart7068301, ["7068302"] = self.OnSubStart7068302}
end

function Quest70683:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068301"] = self.OnSubFinish7068301, ["7068302"] = self.OnSubFinish7068302}
end

function Quest70683:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70683:Start()
    print("Start")
end

function Quest70683:OnDestroy()
    print("OnDestroy")
end

function Quest70683:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70683:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70683:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30668.alias, 3)
    this:ActorDestroy("Q7068302Trigger")
    this:DestroyNpcTrigger("Q7068301N30668Trigger")
end

function Quest70683:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70683:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest70683:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70683:OnSubStart7068301(arg1)
    print("OnSubStart7068301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1.5, npcs.Npc30668.id, 0, 7068301, 15, false)
end

function Quest70683:OnSubFinish7068301(arg1)
    print("OnSubFinish7068301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30668.alias)
end

function Quest70683:OnSubStart7068302(arg1)
    print("OnSubStart7068302")
end

function Quest70683:OnSubFinish7068302(arg1)
    print("OnSubFinish7068302")
end

return Quest70683
