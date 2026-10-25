require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70546 = class("Quest70546", QuestActorProxy)
Quest70546.defaultAlias = "Quest70546"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70546:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70546:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054601"] = self.OnSubStart7054601}
end

function Quest70546:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054601"] = self.OnSubFinish7054601}
end

function Quest70546:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70546:Start()
    print("Start")
end

function Quest70546:OnDestroy()
    print("OnDestroy")
end

function Quest70546:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70546:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70546:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30617.alias, 3)
    this:ActorDestroy("Q70546trigger")
end

function Quest70546:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest70546:OnSubStart7054601(arg1)
    print("OnSubStart7054601")
    this:CreateQuestNpc(arg1, npcs.Npc30610.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30610.alias, 70546):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30617.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30617.alias, 70546):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q70546trigger", "Actor/Gadget/Q70546trigger", 70900002, 0, points._Q70546triggerPoint_.pos, points._Q70546triggerPoint_.rot, true, false, 3)
end

function Quest70546:OnSubFinish7054601(arg1)
    print("OnSubFinish7054601")
    this:SafeDestroyQuestNpc(npcs.Npc30610.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30617.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1895, nil)
    end)
end

return Quest70546
