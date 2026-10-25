require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71535 = class("Quest71535", QuestActorProxy)
Quest71535.defaultAlias = "Quest71535"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71535:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71535:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153501"] = self.OnSubStart7153501,
        ["7153502"] = self.OnSubStart7153502,
        ["7153503"] = self.OnSubStart7153503,
        ["7153504"] = self.OnSubStart7153504
    }
end

function Quest71535:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153501"] = self.OnSubFinish7153501,
        ["7153502"] = self.OnSubFinish7153502,
        ["7153503"] = self.OnSubFinish7153503,
        ["7153504"] = self.OnSubFinish7153504
    }
end

function Quest71535:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71535:Start()
    print("Start")
end

function Quest71535:OnDestroy()
    print("OnDestroy")
end

function Quest71535:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71535:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71535:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30681.alias, 3)
    this:ActorDestroy("Q71535trigger")
end

function Quest71535:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71535:OnSubStart7153501(arg1)
    print("OnSubStart7153501")
end

function Quest71535:OnSubFinish7153501(arg1)
    print("OnSubFinish7153501")
end

function Quest71535:OnSubStart7153502(arg1)
    print("OnSubStart7153502")
    this:CreateQuestNpc(arg1, npcs.Npc30681.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30681.alias, 71535):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest71535:OnSubFinish7153502(arg1)
    print("OnSubFinish7153502")
end

function Quest71535:OnSubStart7153503(arg1)
    print("OnSubStart7153503")
    this:GetQuestNpcActor(npcs.Npc30681.alias, 71535):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30681.alias, 71535):DisableInteeHeadCtrl(false)
end

function Quest71535:OnSubFinish7153503(arg1)
    print("OnSubFinish7153503")
end

function Quest71535:OnSubStart7153504(arg1)
    print("OnSubStart7153504")
    this:GetQuestNpcActor(npcs.Npc30681.alias, 71535):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71535trigger", "Actor/Gadget/Q71535trigger", 70900002, 0, points._Q71535triggerPoint_.pos, points._Q71535triggerPoint_.rot, true, false, 3)
end

function Quest71535:OnSubFinish7153504(arg1)
    print("OnSubFinish7153504")
    this:SafeDestroyQuestNpc(npcs.Npc30681.alias, 3)
end

return Quest71535
