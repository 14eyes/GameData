require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70553 = class("Quest70553", QuestActorProxy)
Quest70553.defaultAlias = "Quest70553"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70553:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70553:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7055301"] = self.OnSubStart7055301,
        ["7055302"] = self.OnSubStart7055302,
        ["7055303"] = self.OnSubStart7055303,
        ["7055304"] = self.OnSubStart7055304,
        ["7055305"] = self.OnSubStart7055305,
        ["7055306"] = self.OnSubStart7055306,
        ["7055307"] = self.OnSubStart7055307,
        ["7055308"] = self.OnSubStart7055308,
        ["7055309"] = self.OnSubStart7055309,
        ["7055310"] = self.OnSubStart7055310
    }
end

function Quest70553:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7055301"] = self.OnSubFinish7055301,
        ["7055302"] = self.OnSubFinish7055302,
        ["7055303"] = self.OnSubFinish7055303,
        ["7055304"] = self.OnSubFinish7055304,
        ["7055305"] = self.OnSubFinish7055305,
        ["7055306"] = self.OnSubFinish7055306,
        ["7055307"] = self.OnSubFinish7055307,
        ["7055308"] = self.OnSubFinish7055308,
        ["7055309"] = self.OnSubFinish7055309,
        ["7055310"] = self.OnSubFinish7055310
    }
end

function Quest70553:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7055302"] = self.OnSubFailed7055302,
        ["7055304"] = self.OnSubFailed7055304,
        ["7055306"] = self.OnSubFailed7055306,
        ["7055308"] = self.OnSubFailed7055308,
        ["7055310"] = self.OnSubFailed7055310
    }
end

function Quest70553:Start()
    print("Start")
end

function Quest70553:OnDestroy()
    print("OnDestroy")
end

function Quest70553:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70553:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70553:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70553Trigger", nil)
    this:ActorDestroy("Q70553Trigger_1", nil)
    this:ActorDestroy("Q70553Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 51208)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70553:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70553Trigger", nil)
    this:ActorDestroy("Q70553Trigger_1", nil)
    this:ActorDestroy("Q70553Trigger_2", nil)
end

function Quest70553:ActorDestroy(arg1, arg2)
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

function Quest70553:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70553:OnSubStart7055301(arg1)
    print("OnSubStart7055301")
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
end

function Quest70553:OnSubFinish7055301(arg1)
    print("OnSubFinish7055301")
end

function Quest70553:OnSubStart7055302(arg1)
    print("OnSubStart7055302")
    actorMgr:CreateActorWithPos("Q70553Trigger", "Actor/Gadget/Q70553Trigger", 70900002, 0, points._Q70553TriggerPoint_.pos, points._Q70553TriggerPoint_.rot, true, false, 51208, nil, 0, 70553)
end

function Quest70553:OnSubFinish7055302(arg1)
    print("OnSubFinish7055302")
end

function Quest70553:OnSubFailed7055302(arg1)
    print("OnSubFailed7055302")
    this:RecycleAllRes()
end

function Quest70553:OnSubStart7055303(arg1)
    print("OnSubStart7055303")
end

function Quest70553:OnSubFinish7055303(arg1)
    print("OnSubFinish7055303")
end

function Quest70553:OnSubStart7055304(arg1)
    print("OnSubStart7055304")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51208 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Varka_1")
            end
        end)
    end)
end

function Quest70553:OnSubFinish7055304(arg1)
    print("OnSubFinish7055304")
end

function Quest70553:OnSubFailed7055304(arg1)
    print("OnSubFailed7055304")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70553:OnSubStart7055305(arg1)
    print("OnSubStart7055305")
end

function Quest70553:OnSubFinish7055305(arg1)
    print("OnSubFinish7055305")
end

function Quest70553:OnSubStart7055306(arg1)
    print("OnSubStart7055306")
    actorMgr:CreateActorWithPos("Q70553Trigger_1", "Actor/Gadget/Q70553Trigger_1", 70900002, 0, points._Q70553Trigger_1Point_.pos, points._Q70553Trigger_1Point_.rot, true, false, 51208, nil, 0, 70553)
end

function Quest70553:OnSubFinish7055306(arg1)
    print("OnSubFinish7055306")
end

function Quest70553:OnSubFailed7055306(arg1)
    print("OnSubFailed7055306")
    this:RecycleAllRes()
end

function Quest70553:OnSubStart7055307(arg1)
    print("OnSubStart7055307")
end

function Quest70553:OnSubFinish7055307(arg1)
    print("OnSubFinish7055307")
end

function Quest70553:OnSubStart7055308(arg1)
    print("OnSubStart7055308")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51208 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Varka_2")
            end
        end)
    end)
end

function Quest70553:OnSubFinish7055308(arg1)
    print("OnSubFinish7055308")
end

function Quest70553:OnSubFailed7055308(arg1)
    print("OnSubFailed7055308")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70553:OnSubStart7055309(arg1)
    print("OnSubStart7055309")
end

function Quest70553:OnSubFinish7055309(arg1)
    print("OnSubFinish7055309")
end

function Quest70553:OnSubStart7055310(arg1)
    print("OnSubStart7055310")
    actorMgr:CreateActorWithPos("Q70553Trigger_2", "Actor/Gadget/Q70553Trigger_2", 70900002, 0, points._Q70553Trigger_2Point_.pos, points._Q70553Trigger_2Point_.rot, true, false, 51208, nil, 0, 70553)
end

function Quest70553:OnSubFinish7055310(arg1)
    print("OnSubFinish7055310")
    this:NpcDestroyImmediately(51208, npcs.Npc1310.alias)
end

function Quest70553:OnSubFailed7055310(arg1)
    print("OnSubFailed7055310")
    this:RecycleAllRes()
end

return Quest70553
