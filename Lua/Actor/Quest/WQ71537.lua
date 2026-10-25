require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71537 = class("Quest71537", QuestActorProxy)
Quest71537.defaultAlias = "Quest71537"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71537:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71537:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153701"] = self.OnSubStart7153701,
        ["7153702"] = self.OnSubStart7153702,
        ["7153703"] = self.OnSubStart7153703,
        ["7153704"] = self.OnSubStart7153704
    }
end

function Quest71537:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153701"] = self.OnSubFinish7153701,
        ["7153702"] = self.OnSubFinish7153702,
        ["7153703"] = self.OnSubFinish7153703,
        ["7153704"] = self.OnSubFinish7153704
    }
end

function Quest71537:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71537:Start()
    print("Start")
end

function Quest71537:OnDestroy()
    print("OnDestroy")
end

function Quest71537:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71537:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71537:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30683.alias, 3)
    this:ActorDestroy("Q71537trigger")
end

function Quest71537:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71537:OnSubStart7153701(arg1)
    print("OnSubStart7153701")
end

function Quest71537:OnSubFinish7153701(arg1)
    print("OnSubFinish7153701")
end

function Quest71537:OnSubStart7153702(arg1)
    print("OnSubStart7153702")
    this:CreateQuestNpc(arg1, npcs.Npc30683.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30683.alias, 71537):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30683.alias, 71537):DisableInteeHeadCtrl(true)
end

function Quest71537:OnSubFinish7153702(arg1)
    print("OnSubFinish7153702")
end

function Quest71537:OnSubStart7153703(arg1)
    print("OnSubStart7153703")
    this:GetQuestNpcActor(npcs.Npc30683.alias, 71537):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30683.alias, 71537):DisableInteeHeadCtrl(false)
end

function Quest71537:OnSubFinish7153703(arg1)
    print("OnSubFinish7153703")
end

function Quest71537:OnSubStart7153704(arg1)
    print("OnSubStart7153704")
    this:GetQuestNpcActor(npcs.Npc30683.alias, 71537):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71537trigger", "Actor/Gadget/Q71537trigger", 70900002, 0, points._Q71537triggerPoint_.pos, points._Q71537triggerPoint_.rot, true, false, 3)
end

function Quest71537:OnSubFinish7153704(arg1)
    print("OnSubFinish7153704")
    this:SafeDestroyQuestNpc(npcs.Npc30683.alias, 3)
end

return Quest71537
