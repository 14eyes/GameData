require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74172 = class("Quest74172", QuestActorProxy)
Quest74172.defaultAlias = "Quest74172"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74172:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74172:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417201"] = self.OnSubStart7417201}
end

function Quest74172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417201"] = self.OnSubFinish7417201}
end

function Quest74172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74172:Start()
    print("Start")
end

function Quest74172:OnDestroy()
    print("OnDestroy")
end

function Quest74172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74172:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74172:OnSubStart7417201(arg1)
    print("OnSubStart7417201")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    actorMgr:CreateActorWithPos("Q74172Trigger", "Actor/Gadget/Q74172Trigger", 70900002, 0, points.TPos_Q74172Trigger.pos, points.TPos_Q74172Trigger.rot, true, false, 3)
end

function Quest74172:OnSubFinish7417201(arg1)
    print("OnSubFinish7417201")
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5258Data.alias, 3)
end

return Quest74172
