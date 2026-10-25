require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70548 = class("Quest70548", QuestActorProxy)
Quest70548.defaultAlias = "Quest70548"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70548:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70548:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7054801"] = self.OnSubStart7054801,
        ["7054802"] = self.OnSubStart7054802,
        ["7054803"] = self.OnSubStart7054803,
        ["7054804"] = self.OnSubStart7054804,
        ["7054805"] = self.OnSubStart7054805,
        ["7054806"] = self.OnSubStart7054806,
        ["7054807"] = self.OnSubStart7054807,
        ["7054808"] = self.OnSubStart7054808,
        ["7054809"] = self.OnSubStart7054809,
        ["7054810"] = self.OnSubStart7054810
    }
end

function Quest70548:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7054801"] = self.OnSubFinish7054801,
        ["7054802"] = self.OnSubFinish7054802,
        ["7054803"] = self.OnSubFinish7054803,
        ["7054804"] = self.OnSubFinish7054804,
        ["7054805"] = self.OnSubFinish7054805,
        ["7054806"] = self.OnSubFinish7054806,
        ["7054807"] = self.OnSubFinish7054807,
        ["7054808"] = self.OnSubFinish7054808,
        ["7054809"] = self.OnSubFinish7054809,
        ["7054810"] = self.OnSubFinish7054810
    }
end

function Quest70548:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7054802"] = self.OnSubFailed7054802,
        ["7054804"] = self.OnSubFailed7054804,
        ["7054806"] = self.OnSubFailed7054806,
        ["7054808"] = self.OnSubFailed7054808,
        ["7054810"] = self.OnSubFailed7054810
    }
end

function Quest70548:Start()
    print("Start")
end

function Quest70548:OnDestroy()
    print("OnDestroy")
end

function Quest70548:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70548:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70548:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q70548Trigger", nil)
    this:ActorDestroy("Q70548Trigger_1", nil)
    this:ActorDestroy("Q70548Trigger_2", nil)
    this:SafeDestroyQuestNpc(npcs.Lisa.alias, 51203)
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70548:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q70548Trigger", nil)
    this:ActorDestroy("Q70548Trigger_1", nil)
    this:ActorDestroy("Q70548Trigger_2", nil)
end

function Quest70548:ActorDestroy(arg1, arg2)
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

function Quest70548:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70548:OnSubStart7054801(arg1)
    print("OnSubStart7054801")
    this:CreateQuestNpc(arg1, npcs.Lisa.id, 0, false, 0)
end

function Quest70548:OnSubFinish7054801(arg1)
    print("OnSubFinish7054801")
end

function Quest70548:OnSubStart7054802(arg1)
    print("OnSubStart7054802")
    actorMgr:CreateActorWithPos("Q70548Trigger", "Actor/Gadget/Q70548Trigger", 70900002, 0, points._Q70548TriggerPoint_.pos, points._Q70548TriggerPoint_.rot, true, false, 51203, nil, 0, 70548)
end

function Quest70548:OnSubFinish7054802(arg1)
    print("OnSubFinish7054802")
end

function Quest70548:OnSubFailed7054802(arg1)
    print("OnSubFailed7054802")
    this:RecycleAllRes()
end

function Quest70548:OnSubStart7054803(arg1)
    print("OnSubStart7054803")
end

function Quest70548:OnSubFinish7054803(arg1)
    print("OnSubFinish7054803")
end

function Quest70548:OnSubStart7054804(arg1)
    print("OnSubStart7054804")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51203 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Lisa_1")
            end
        end)
    end)
end

function Quest70548:OnSubFinish7054804(arg1)
    print("OnSubFinish7054804")
end

function Quest70548:OnSubFailed7054804(arg1)
    print("OnSubFailed7054804")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70548:OnSubStart7054805(arg1)
    print("OnSubStart7054805")
end

function Quest70548:OnSubFinish7054805(arg1)
    print("OnSubFinish7054805")
end

function Quest70548:OnSubStart7054806(arg1)
    print("OnSubStart7054806")
    actorMgr:CreateActorWithPos("Q70548Trigger_1", "Actor/Gadget/Q70548Trigger_1", 70900002, 0, points._Q70548Trigger_1Point_.pos, points._Q70548Trigger_1Point_.rot, true, false, 51203, nil, 0, 70548)
end

function Quest70548:OnSubFinish7054806(arg1)
    print("OnSubFinish7054806")
end

function Quest70548:OnSubFailed7054806(arg1)
    print("OnSubFailed7054806")
    this:RecycleAllRes()
end

function Quest70548:OnSubStart7054807(arg1)
    print("OnSubStart7054807")
end

function Quest70548:OnSubFinish7054807(arg1)
    print("OnSubFinish7054807")
end

function Quest70548:OnSubStart7054808(arg1)
    print("OnSubStart7054808")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 51203 then
                actorUtils.StartCinePlay("Activity_BubbleDramaDrink_Lisa_2")
            end
        end)
    end)
end

function Quest70548:OnSubFinish7054808(arg1)
    print("OnSubFinish7054808")
end

function Quest70548:OnSubFailed7054808(arg1)
    print("OnSubFailed7054808")
    this:RecycleAllRes()
    actorUtils.StopCinePlay(true)
end

function Quest70548:OnSubStart7054809(arg1)
    print("OnSubStart7054809")
end

function Quest70548:OnSubFinish7054809(arg1)
    print("OnSubFinish7054809")
end

function Quest70548:OnSubStart7054810(arg1)
    print("OnSubStart7054810")
    actorMgr:CreateActorWithPos("Q70548Trigger_2", "Actor/Gadget/Q70548Trigger_2", 70900002, 0, points._Q70548Trigger_2Point_.pos, points._Q70548Trigger_2Point_.rot, true, false, 51203, nil, 0, 70548)
end

function Quest70548:OnSubFinish7054810(arg1)
    print("OnSubFinish7054810")
    this:NpcDestroyImmediately(51203, npcs.Lisa.alias)
end

function Quest70548:OnSubFailed7054810(arg1)
    print("OnSubFailed7054810")
    this:RecycleAllRes()
end

return Quest70548
