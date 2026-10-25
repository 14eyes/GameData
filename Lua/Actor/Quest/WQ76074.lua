require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76074 = class("Quest76074", QuestActorProxy)
Quest76074.defaultAlias = "Quest76074"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76074:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607401"] = self.OnSubStart7607401,
        ["7607411"] = self.OnSubStart7607411,
        ["7607412"] = self.OnSubStart7607412,
        ["7607402"] = self.OnSubStart7607402,
        ["7607403"] = self.OnSubStart7607403,
        ["7607404"] = self.OnSubStart7607404,
        ["7607405"] = self.OnSubStart7607405,
        ["7607406"] = self.OnSubStart7607406,
        ["7607407"] = self.OnSubStart7607407,
        ["7607408"] = self.OnSubStart7607408,
        ["7607409"] = self.OnSubStart7607409,
        ["7607410"] = self.OnSubStart7607410
    }
end

function Quest76074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607401"] = self.OnSubFinish7607401,
        ["7607411"] = self.OnSubFinish7607411,
        ["7607412"] = self.OnSubFinish7607412,
        ["7607402"] = self.OnSubFinish7607402,
        ["7607403"] = self.OnSubFinish7607403,
        ["7607404"] = self.OnSubFinish7607404,
        ["7607405"] = self.OnSubFinish7607405,
        ["7607406"] = self.OnSubFinish7607406,
        ["7607407"] = self.OnSubFinish7607407,
        ["7607408"] = self.OnSubFinish7607408,
        ["7607409"] = self.OnSubFinish7607409,
        ["7607410"] = self.OnSubFinish7607410
    }
end

function Quest76074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76074:Start()
    print("Start")
end

function Quest76074:OnDestroy()
    print("OnDestroy")
end

function Quest76074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76074:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7607412Trigger")
end

function Quest76074:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76074:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76074:OnSubStart7607401(arg1)
    print("OnSubStart7607401")
end

function Quest76074:OnSubFinish7607401(arg1)
    print("OnSubFinish7607401")
end

function Quest76074:OnSubStart7607411(arg1)
    print("OnSubStart7607411")
end

function Quest76074:OnSubFinish7607411(arg1)
    print("OnSubFinish7607411")
end

function Quest76074:OnSubStart7607412(arg1)
    print("OnSubStart7607412")
    this:CreateQuestNpc(arg1, npcs.Npc7667.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7607412Trigger", "Actor/Gadget/Q7607412Trigger", 70900002, 0, points._Q7607412TriggerPoint_.pos, points._Q7607412TriggerPoint_.rot, true, false, 3)
end

function Quest76074:OnSubFinish7607412(arg1)
    print("OnSubFinish7607412")
    this:NpcDestroyImmediately(3, npcs.Npc7667.alias)
    this:SetNavigationByMainId(76074, true)
end

function Quest76074:OnSubStart7607402(arg1)
    print("OnSubStart7607402")
end

function Quest76074:OnSubFinish7607402(arg1)
    print("OnSubFinish7607402")
end

function Quest76074:OnSubStart7607403(arg1)
    print("OnSubStart7607403")
end

function Quest76074:OnSubFinish7607403(arg1)
    print("OnSubFinish7607403")
end

function Quest76074:OnSubStart7607404(arg1)
    print("OnSubStart7607404")
end

function Quest76074:OnSubFinish7607404(arg1)
    print("OnSubFinish7607404")
end

function Quest76074:OnSubStart7607405(arg1)
    print("OnSubStart7607405")
end

function Quest76074:OnSubFinish7607405(arg1)
    print("OnSubFinish7607405")
end

function Quest76074:OnSubStart7607406(arg1)
    print("OnSubStart7607406")
end

function Quest76074:OnSubFinish7607406(arg1)
    print("OnSubFinish7607406")
end

function Quest76074:OnSubStart7607407(arg1)
    print("OnSubStart7607407")
    this:PlayCutsceneIndex(7607407, function(arg1)
        actorUtils.FinishQuestID(false, 7607407)
    end, nil, nil, false)
end

function Quest76074:OnSubFinish7607407(arg1)
    print("OnSubFinish7607407")
end

function Quest76074:OnSubStart7607408(arg1)
    print("OnSubStart7607408")
end

function Quest76074:OnSubFinish7607408(arg1)
    print("OnSubFinish7607408")
end

function Quest76074:OnSubStart7607409(arg1)
    print("OnSubStart7607409")
end

function Quest76074:OnSubFinish7607409(arg1)
    print("OnSubFinish7607409")
end

function Quest76074:OnSubStart7607410(arg1)
    print("OnSubStart7607410")
end

function Quest76074:OnSubFinish7607410(arg1)
    print("OnSubFinish7607410")
end

return Quest76074
