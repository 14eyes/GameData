require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75176 = class("Quest75176", QuestActorProxy)
Quest75176.defaultAlias = "Quest75176"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75176:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75176:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517601"] = self.OnSubStart7517601,
        ["7517602"] = self.OnSubStart7517602,
        ["7517603"] = self.OnSubStart7517603,
        ["7517604"] = self.OnSubStart7517604,
        ["7517605"] = self.OnSubStart7517605,
        ["7517606"] = self.OnSubStart7517606
    }
end

function Quest75176:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517601"] = self.OnSubFinish7517601,
        ["7517602"] = self.OnSubFinish7517602,
        ["7517603"] = self.OnSubFinish7517603,
        ["7517604"] = self.OnSubFinish7517604,
        ["7517605"] = self.OnSubFinish7517605,
        ["7517606"] = self.OnSubFinish7517606
    }
end

function Quest75176:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75176:Start()
    print("Start")
end

function Quest75176:OnDestroy()
    print("OnDestroy")
end

function Quest75176:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75176:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75176:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75176:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7517603Trigger")
    this:ActorDestroy("Q7517604rigger")
    this:ActorDestroy("Q7517605rigger")
    this:ActorDestroy("Q7517606rigger")
    this:ActorDestroy("Q7517601Trigger")
end

function Quest75176:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75176:OnSubStart7517601(arg1)
    print("OnSubStart7517601")
    this:CreateQuestNpc(arg1, npcs.Npc21796.id, 0, false, 0)
end

function Quest75176:OnSubFinish7517601(arg1)
    print("OnSubFinish7517601")
    this:SetNavigationByMainId(75176, true)
    this:QuestNarratorTask(datas.NarratorWithId_7517601, nil)
end

function Quest75176:OnSubStart7517602(arg1)
    print("OnSubStart7517602")
end

function Quest75176:OnSubFinish7517602(arg1)
    print("OnSubFinish7517602")
    this:SafeDestroyQuestNpc(npcs.Npc21796.alias, 101)
end

function Quest75176:OnSubStart7517603(arg1)
    print("OnSubStart7517603")
    actorMgr:CreateActorWithPos("Q7517603Trigger", "Actor/Gadget/Q7517603Trigger", 70900002, 0, points._Q7517603TriggerPoint_.pos, points._Q7517603TriggerPoint_.rot, true, false, 101)
end

function Quest75176:OnSubFinish7517603(arg1)
    print("OnSubFinish7517603")
end

function Quest75176:OnSubStart7517604(arg1)
    print("OnSubStart7517604")
    actorMgr:CreateActorWithPos("Q7517604rigger", "Actor/Gadget/Q7517604rigger", 70900002, 0, points._Q7517604riggerPoint_.pos, points._Q7517604riggerPoint_.rot, true, false, 101)
end

function Quest75176:OnSubFinish7517604(arg1)
    print("OnSubFinish7517604")
end

function Quest75176:OnSubStart7517605(arg1)
    print("OnSubStart7517605")
    actorMgr:CreateActorWithPos("Q7517605rigger", "Actor/Gadget/Q7517605rigger", 70900002, 0, points._Q7517605riggerPoint_.pos, points._Q7517605riggerPoint_.rot, true, false, 101)
end

function Quest75176:OnSubFinish7517605(arg1)
    print("OnSubFinish7517605")
end

function Quest75176:OnSubStart7517606(arg1)
    print("OnSubStart7517606")
    actorMgr:CreateActorWithPos("Q7517606rigger", "Actor/Gadget/Q7517606rigger", 70900002, 0, points._Q7517606riggerPoint_.pos, points._Q7517606riggerPoint_.rot, true, false, 101)
end

function Quest75176:OnSubFinish7517606(arg1)
    print("OnSubFinish7517606")
end

return Quest75176
