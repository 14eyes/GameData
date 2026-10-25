require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local RequestInteractionWithCameraLookTrigger = class("RequestInteractionWithCameraLookTrigger", GadgetActorProxy)
RequestInteractionWithCameraLookTrigger.defaultAlias = "RequestInteractionWithCameraLookTrigger"
function RequestInteractionWithCameraLookTrigger:OnPostDataPrepare() end

function RequestInteractionWithCameraLookTrigger:OnPostComponentPrepare()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnPostComponentPrepare: " .. self.alias)
    end

    gadgetTrigger.lightUpTriggered = false
    local mainQuestID = 0
    if gadgetTrigger.useQuestMode then
        mainQuestID = gadgetTrigger.mainQuestID
    end

    if gadgetTrigger.noBlackData.preTriggerIn then
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, nil, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, mainQuestID)
    else
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn, mainQuestID)
    end
end

function RequestInteractionWithCameraLookTrigger:PreTriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger ~= nil then
        if gadgetTrigger.lightUpTriggered ~= true then
            goto lbl_11
        end
    end

    do
        return
    end

    ::lbl_11::
    if NG_HSOD_DEBUG then
        print("$[XXX]CameraLookTrigger$ PreTriggerIn alias: " .. self.alias)
    end

    self:LightUpTriggerIn()
end

function RequestInteractionWithCameraLookTrigger:TriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger ~= nil then
        if gadgetTrigger.lightUpTriggered ~= true then
            goto lbl_11
        end
    end

    do
        return
    end

    ::lbl_11::
    if NG_HSOD_DEBUG then
        print("$[XXX]CameraLookTrigger$ TriggerIn alias: " .. self.alias)
    end

    self:LightUpTriggerIn()
end

function RequestInteractionWithCameraLookTrigger:LightUpTriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    if gadgetTrigger.lightUpTriggered == true then
        return
    end

    gadgetTrigger.lightUpTriggered = true
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ LightUpTriggerIn alias: " .. self.alias .. " npc=" .. gadgetTrigger.npcAlias)
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal == nil then
        print("$CameraLookTrigger$ quest is nil " .. self.alias)
        actorMgr.GadgetTriggerDic[self.alias] = nil
        self.DestroySelf(self)
        return
    end

    actorInternal:StartTalkPrepareInter(gadgetTrigger.noBlackData.talkId, function(arg1)
        self:OnCameLookEnd()
    end, function(arg1, arg2)
        self:OnPrepareInterFinish(arg2)
    end, function(arg1)
        self:OnPrepareInterOutOfTime()
    end, gadgetTrigger.noBlackData)
end

function RequestInteractionWithCameraLookTrigger:OnCameLookEnd()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnCameLookEnd alias: " .. self.alias)
    end

    self:DoNpcRequest()
end

function RequestInteractionWithCameraLookTrigger:OnPrepareInterFinish(arg1)
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnPrepareInterFinish alias: " .. self.alias .. " isSucc:" .. tostring(arg1))
    end

    if arg1 == false then
        self:DoNpcRequest()
    end
end

function RequestInteractionWithCameraLookTrigger:OnPrepareInterOutOfTime()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnPrepareInterOutOfTime alias: " .. self.alias)
    end

    self:DoNpcRequest()
end

function RequestInteractionWithCameraLookTrigger:DoNpcRequest()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ DoNpcRequest alias: " .. self.alias .. " npc=" .. gadgetTrigger.npcAlias)
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        if actorInternal ~= actorMgr.dummyActor then
            goto lbl_45
        end
    end

    print("$CameraLookTrigger$ quest is nil " .. self.alias)
    actorMgr.GadgetTriggerDic[self.alias] = nil
    self.DestroySelf(self)
    do
        return
    end

    ::lbl_45::
    local realAlias = actorInternal:GetRealAlias(gadgetTrigger.npcAlias)
    actorInternal:WaitEntityReadyCall({realAlias}, function(arg1)
        self:RealRequest()
    end)
end

function RequestInteractionWithCameraLookTrigger:RealRequest()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        if actorInternal ~= actorMgr.dummyActor then
            goto lbl_35
        end
    end

    print("$CameraLookTrigger$ quest is nil " .. self.alias)
    actorMgr.GadgetTriggerDic[self.alias] = nil
    self:DestroySelf()
    do
        return
    end

    ::lbl_35::
    local realAlias = actorInternal:GetRealAlias(gadgetTrigger.npcAlias)
    actorInternal.uActor:RequestInteraction(realAlias, nil, gadgetTrigger.interHighPriority, true)
    actorInternal:ClearNpcTriggerData(self.alias)
    actorMgr.GadgetTriggerDic[self.alias] = nil
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ DestroySelf " .. self.alias)
    end

    self:DestroySelf()
end

function RequestInteractionWithCameraLookTrigger:TriggerOut()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ TriggerOut")
    end

    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        return
    end

    gadgetTrigger.lightUpTriggered = false
end

return RequestInteractionWithCameraLookTrigger
