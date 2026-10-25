require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76145 = class("Quest76145", QuestActorProxy)
Quest76145.defaultAlias = "Quest76145"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76145:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614502"] = self.OnSubStart7614502,
        ["7614503"] = self.OnSubStart7614503,
        ["7614504"] = self.OnSubStart7614504,
        ["7614506"] = self.OnSubStart7614506,
        ["7614507"] = self.OnSubStart7614507,
        ["7614509"] = self.OnSubStart7614509
    }
end

function Quest76145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614502"] = self.OnSubFinish7614502,
        ["7614503"] = self.OnSubFinish7614503,
        ["7614504"] = self.OnSubFinish7614504,
        ["7614506"] = self.OnSubFinish7614506,
        ["7614507"] = self.OnSubFinish7614507,
        ["7614509"] = self.OnSubFinish7614509
    }
end

function Quest76145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76145:Start()
    print("Start")
end

function Quest76145:OnDestroy()
    print("OnDestroy")
end

function Quest76145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76145:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76145:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7614503Trigger")
    this:ActorDestroy("Q7614506Trigger")
    this:ActorDestroy("Q7614509Trigger")
end

function Quest76145:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76145:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76145:OnSubStart7614502(arg1)
    print("OnSubStart7614502")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
end

function Quest76145:OnSubFinish7614502(arg1)
    print("OnSubFinish7614502")
end

function Quest76145:OnSubStart7614503(arg1)
    print("OnSubStart7614503")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614503Trigger", "Actor/Gadget/Q7614503Trigger", 70900002, 0, points._Q7614503TriggerPoint_.pos, points._Q7614503TriggerPoint_.rot, true, false, 3)
end

function Quest76145:OnSubFinish7614503(arg1)
    print("OnSubFinish7614503")
    this:ShowBlackScreenWithDialogText(0.25, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76145:OnSubStart7614504(arg1)
    print("OnSubStart7614504")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
end

function Quest76145:OnSubFinish7614504(arg1)
    print("OnSubFinish7614504")
end

function Quest76145:OnSubStart7614506(arg1)
    print("OnSubStart7614506")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614506Trigger", "Actor/Gadget/Q7614506Trigger", 70900002, 0, points._Q7614506TriggerPoint_.pos, points._Q7614506TriggerPoint_.rot, true, false, 3)
end

function Quest76145:OnSubFinish7614506(arg1)
    print("OnSubFinish7614506")
    this:ShowBlackScreenWithDialogText(0.25, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76145:OnSubStart7614507(arg1)
    print("OnSubStart7614507")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
end

function Quest76145:OnSubFinish7614507(arg1)
    print("OnSubFinish7614507")
end

function Quest76145:OnSubStart7614509(arg1)
    print("OnSubStart7614509")
    this:CreateQuestNpc(arg1, npcs.Npc7656.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614509Trigger", "Actor/Gadget/Q7614509Trigger", 70900002, 0, points._Q7614509TriggerPoint_.pos, points._Q7614509TriggerPoint_.rot, true, false, 3)
end

function Quest76145:OnSubFinish7614509(arg1)
    print("OnSubFinish7614509")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7656.alias)
end

return Quest76145
