require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70549 = class("Quest70549", QuestActorProxy)
Quest70549.defaultAlias = "Quest70549"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70549:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70549:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7054901"] = self.OnSubStart7054901,
        ["7054902"] = self.OnSubStart7054902,
        ["7054903"] = self.OnSubStart7054903,
        ["7054904"] = self.OnSubStart7054904,
        ["7054905"] = self.OnSubStart7054905,
        ["7054906"] = self.OnSubStart7054906,
        ["7054907"] = self.OnSubStart7054907,
        ["7054908"] = self.OnSubStart7054908,
        ["7054909"] = self.OnSubStart7054909,
        ["7054910"] = self.OnSubStart7054910
    }
end

function Quest70549:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7054901"] = self.OnSubFinish7054901,
        ["7054902"] = self.OnSubFinish7054902,
        ["7054903"] = self.OnSubFinish7054903,
        ["7054904"] = self.OnSubFinish7054904,
        ["7054905"] = self.OnSubFinish7054905,
        ["7054906"] = self.OnSubFinish7054906,
        ["7054907"] = self.OnSubFinish7054907,
        ["7054908"] = self.OnSubFinish7054908,
        ["7054909"] = self.OnSubFinish7054909,
        ["7054910"] = self.OnSubFinish7054910
    }
end

function Quest70549:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7054902"] = self.OnSubFailed7054902,
        ["7054904"] = self.OnSubFailed7054904,
        ["7054906"] = self.OnSubFailed7054906,
        ["7054908"] = self.OnSubFailed7054908,
        ["7054910"] = self.OnSubFailed7054910
    }
end

function Quest70549:Start()
    print("Start")
end

function Quest70549:OnDestroy()
    print("OnDestroy")
end

function Quest70549:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70549:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70549:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70549Trigger", nil)
    this:ActorDestroy("Q70549Trigger_1", nil)
    this:ActorDestroy("Q70549Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 51204)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70549:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70549Trigger", nil)
    this:ActorDestroy("Q70549Trigger_1", nil)
    this:ActorDestroy("Q70549Trigger_2", nil)
end

function Quest70549:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70549:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70549:OnSubStart7054901(arg1)
    print("OnSubStart7054901")
    this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
end

function Quest70549:OnSubFinish7054901(arg1)
    print("OnSubFinish7054901")
end

function Quest70549:OnSubStart7054902(arg1)
    print("OnSubStart7054902")
    actorMgr:CreateActorWithPos("Q70549Trigger", "Actor/Gadget/Q70549Trigger", 70900002, 0, points._Q70549TriggerPoint_.pos, points._Q70549TriggerPoint_.rot, true, false, 51204, nil, 0, 70549)
end

function Quest70549:OnSubFinish7054902(arg1)
    print("OnSubFinish7054902")
end

function Quest70549:OnSubFailed7054902(arg1)
    print("OnSubFailed7054902")
    this:RecycleAllRes()
end

function Quest70549:OnSubStart7054903(arg1)
    print("OnSubStart7054903")
end

function Quest70549:OnSubFinish7054903(arg1)
    print("OnSubFinish7054903")
end

function Quest70549:OnSubStart7054904(arg1)
    print("OnSubStart7054904")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51204 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Clorinde_1")
            end
        end)
    end)
end

function Quest70549:OnSubFinish7054904(arg1)
    print("OnSubFinish7054904")
end

function Quest70549:OnSubFailed7054904(arg1)
    print("OnSubFailed7054904")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70549:OnSubStart7054905(arg1)
    print("OnSubStart7054905")
end

function Quest70549:OnSubFinish7054905(arg1)
    print("OnSubFinish7054905")
end

function Quest70549:OnSubStart7054906(arg1)
    print("OnSubStart7054906")
    actorMgr:CreateActorWithPos("Q70549Trigger_1", "Actor/Gadget/Q70549Trigger_1", 70900002, 0, points._Q70549Trigger_1Point_.pos, points._Q70549Trigger_1Point_.rot, true, false, 51204, nil, 0, 70549)
end

function Quest70549:OnSubFinish7054906(arg1)
    print("OnSubFinish7054906")
end

function Quest70549:OnSubFailed7054906(arg1)
    print("OnSubFailed7054906")
    this:RecycleAllRes()
end

function Quest70549:OnSubStart7054907(arg1)
    print("OnSubStart7054907")
end

function Quest70549:OnSubFinish7054907(arg1)
    print("OnSubFinish7054907")
end

function Quest70549:OnSubStart7054908(arg1)
    print("OnSubStart7054908")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51204 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Clorinde_2")
            end
        end)
    end)
end

function Quest70549:OnSubFinish7054908(arg1)
    print("OnSubFinish7054908")
end

function Quest70549:OnSubFailed7054908(arg1)
    print("OnSubFailed7054908")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70549:OnSubStart7054909(arg1)
    print("OnSubStart7054909")
end

function Quest70549:OnSubFinish7054909(arg1)
    print("OnSubFinish7054909")
end

function Quest70549:OnSubStart7054910(arg1)
    print("OnSubStart7054910")
    actorMgr:CreateActorWithPos("Q70549Trigger_2", "Actor/Gadget/Q70549Trigger_2", 70900002, 0, points._Q70549Trigger_2Point_.pos, points._Q70549Trigger_2Point_.rot, true, false, 51204, nil, 0, 70549)
end

function Quest70549:OnSubFinish7054910(arg1)
    print("OnSubFinish7054910")
    this:NpcDestroyImmediately(51204, npcs.Npc1077.alias)
end

function Quest70549:OnSubFailed7054910(arg1)
    print("OnSubFailed7054910")
    this:RecycleAllRes()
end

return Quest70549
