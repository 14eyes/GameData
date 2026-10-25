require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70680 = class("Quest70680", QuestActorProxy)
Quest70680.defaultAlias = "Quest70680"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest70680:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70680:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068001"] = self.OnSubStart7068001}
end

function Quest70680:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068001"] = self.OnSubFinish7068001}
end

function Quest70680:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70680:Start()
    print("Start")
end

function Quest70680:OnDestroy()
    print("OnDestroy")
end

function Quest70680:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70680:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70680:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70680:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70680:OnSubStart7068001(arg1)
    print("OnSubStart7068001")
    this:CreateQuestNpc(arg1, npcs.Npc9500Data.id, 0, false, 0)
    actorUtils.BanRoleCombatPos(1)
    actorUtils.BanRoleCombatPos(2)
    actorUtils.BanRoleCombatPos(3)
    actorUtils.BanRoleCombatPos(4)
    actorMgr:CreateActorWithPos("Q7068001Trigger", "Actor/Gadget/Q7068001Trigger", 70900002, 0, points.TPos_Q7068001Trigger.pos, points.TPos_Q7068001Trigger.rot, true, false, 48000)
end

function Quest70680:OnSubFinish7068001(arg1)
    print("OnSubFinish7068001")
    actorUtils.FreeRoleCombatPos(1)
    actorUtils.FreeRoleCombatPos(2)
    actorUtils.FreeRoleCombatPos(3)
    actorUtils.FreeRoleCombatPos(4)
    this:SafeDestroyQuestNpc(npcs.Npc9500Data.alias, 48000)
    this:ActorDestroy("Q7068001Trigger")
end

return Quest70680
