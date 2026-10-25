require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73530 = class("Quest73530", QuestActorProxy)
Quest73530.defaultAlias = "Quest73530"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest73530:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73530:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7353001"] = self.OnSubStart7353001}
end

function Quest73530:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7353001"] = self.OnSubFinish7353001}
end

function Quest73530:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7353001"] = self.OnSubFailed7353001}
end

function Quest73530:Start()
    print("Start")
end

function Quest73530:OnDestroy()
    print("OnDestroy")
end

function Quest73530:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73530:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73530:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30225.alias, 3)
    this:ActorDestroy("Q7353001_trigger")
end

function Quest73530:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73530:OnSubStart7353001(arg1)
    print("OnSubStart7353001")
    this:CreateQuestNpc(arg1, npcs.Npc30225.id, 0)
    actorMgr:CreateActorWithPos("Q7353001_trigger", "Actor/Gadget/Q7353001_trigger", 70900002, 0, points.Q7353001_trigger.pos, points.Q7353001_trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc30225.alias, 73530):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30225.alias, 73530):DisableInteeHeadCtrl(true)
end

function Quest73530:OnSubFinish7353001(arg1)
    print("OnSubFinish7353001")
    this:SafeDestroyQuestNpc(npcs.Npc30225.alias, 3)
end

function Quest73530:OnSubFailed7353001(arg1)
    print("OnSubFailed7353001")
end

return Quest73530
