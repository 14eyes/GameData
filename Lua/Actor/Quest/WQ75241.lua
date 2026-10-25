require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75241 = class("Quest75241", QuestActorProxy)
Quest75241.defaultAlias = "Quest75241"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75241:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75241:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7524101"] = self.OnSubStart7524101}
end

function Quest75241:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7524101"] = self.OnSubFinish7524101}
end

function Quest75241:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75241:Start()
    print("Start")
end

function Quest75241:OnDestroy()
    print("OnDestroy")
end

function Quest75241:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75241:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75241:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75241:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7524101Trigger")
    this:ActorDestroy("Q7524101_01trigger")
end

function Quest75241:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75241:OnSubStart7524101(arg1)
    print("OnSubStart7524101")
    this:CreateQuestNpc(arg1, npcs.Npc6614.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7524101Trigger", "Actor/Gadget/Q7524101Trigger", 70900002, 0, points.Q7524101Trigger.pos, points.Q7524101Trigger.rot, true, false, 3)
end

function Quest75241:OnSubFinish7524101(arg1)
    print("OnSubFinish7524101")
    this:SafeDestroyQuestNpc(npcs.Npc6614.alias, 3)
    this:ActorDestroy("Q7524101Trigger")
end

return Quest75241
