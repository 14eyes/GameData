require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76065 = class("Quest76065", QuestActorProxy)
Quest76065.defaultAlias = "Quest76065"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76065:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76065:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7606501"] = self.OnSubStart7606501, ["7606502"] = self.OnSubStart7606502}
end

function Quest76065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7606501"] = self.OnSubFinish7606501, ["7606502"] = self.OnSubFinish7606502}
end

function Quest76065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76065:Start()
    print("Start")
end

function Quest76065:OnDestroy()
    print("OnDestroy")
end

function Quest76065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76065:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76065:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7606501Trigger_1", 76065)
end

function Quest76065:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76065:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest76065:OnSubStart7606501(arg1)
    print("OnSubStart7606501")
    actorMgr:CreateActorWithPos("Q7606501Trigger_1", "Actor/Gadget/Q7606501Trigger_1", 70900002, 0, points._Q7606501Trigger_1Point_.pos, points._Q7606501Trigger_1Point_.rot, true, false, 102, nil, 0, 76065)
end

function Quest76065:OnSubFinish7606501(arg1)
    print("OnSubFinish7606501")
end

function Quest76065:OnSubStart7606502(arg1)
    print("OnSubStart7606502")
    this:NpcCreateWithNoBlack(npcs.Npc22270.id, 0, 50, 7606502, true, 7606501)
end

function Quest76065:OnSubFinish7606502(arg1)
    print("OnSubFinish7606502")
    this:SafeDestroyQuestNpc(npcs.Npc22270.alias, 102)
end

return Quest76065
