require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75138 = class("Quest75138", QuestActorProxy)
Quest75138.defaultAlias = "Quest75138"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75138:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75138:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7513801"] = self.OnSubStart7513801, ["7513802"] = self.OnSubStart7513802}
end

function Quest75138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7513801"] = self.OnSubFinish7513801, ["7513802"] = self.OnSubFinish7513802}
end

function Quest75138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75138:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75138:OnSubStart7513801(arg1)
    print("OnSubStart7513801")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21460.id, 0, 7513801, 10, false)
    actorMgr:CreateActorWithPos("Q7513801_Trigger", "Actor/Gadget/Q7513801_Trigger", 70900002, 0, points._Q7513801_TriggerPoint_.pos, points._Q7513801_TriggerPoint_.rot, true, false, 3)
end

function Quest75138:OnSubFinish7513801(arg1)
    print("OnSubFinish7513801")
end

function Quest75138:OnSubStart7513802(arg1)
    print("OnSubStart7513802")
end

function Quest75138:OnSubFinish7513802(arg1)
    print("OnSubFinish7513802")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

return Quest75138
