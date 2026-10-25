require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CreateNPCWithCameraLookTrigger = class("CreateNPCWithCameraLookTrigger", GadgetActorProxy)
CreateNPCWithCameraLookTrigger.defaultAlias = "CreateNPCWithCameraLookTrigger"
function CreateNPCWithCameraLookTrigger:OnPostDataPrepare() end

function CreateNPCWithCameraLookTrigger:OnPostComponentPrepare()
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

    if gadgetTrigger.hasVehiclePreCondition == true then
        if gadgetTrigger.targetVehicleFeatureTagList ~= nil then
            self:SetTriggerConditionInVehicle(gadgetTrigger.targetVehicleFeatureTagList)
            if gadgetTrigger.hintTextMapId ~= nil then
                self:SetTriggerInHintTextMapIdOnCond(gadgetTrigger.hintTextMapId)
            end
        end
    end
end

function CreateNPCWithCameraLookTrigger:PreTriggerIn()
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

function CreateNPCWithCameraLookTrigger:TriggerIn()
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

function CreateNPCWithCameraLookTrigger:LightUpTriggerIn()
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
        print("$CameraLookTrigger$ LightUpTriggerIn alias: " .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
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

function CreateNPCWithCameraLookTrigger:OnCameLookEnd()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnCameLookEnd alias: " .. self.alias)
    end

    self:DoCreate()
end

function CreateNPCWithCameraLookTrigger:OnPrepareInterFinish(arg1)
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnPrepareInterFinish alias: " .. self.alias .. " isSucc:" .. tostring(arg1))
    end

    if arg1 == false then
        self:DoCreate()
    end
end

function CreateNPCWithCameraLookTrigger:OnPrepareInterOutOfTime()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ OnPrepareInterOutOfTime alias: " .. self.alias)
    end

    self:DoCreate()
end

function CreateNPCWithCameraLookTrigger:DoCreate()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ DoCreate alias: " .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
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
    if gadgetTrigger.hideDailyNpc == true then
        actorInternal:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
    end

    actorInternal:CreateQuestNpcById(gadgetTrigger.questID, gadgetTrigger.npcID, gadgetTrigger.npcIndex)
    local realAlias = actorInternal:GetRealAlias(gadgetTrigger.npcAlias)
    actorInternal:WaitEntityReadyCall({realAlias}, function()
        self:DoNpcRequest()
    end)
end

function CreateNPCWithCameraLookTrigger:DoNpcRequest()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$CameraLookTrigger$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ DoNpcRequest alias: " .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        if actorInternal ~= actorMgr.dummyActor then
            goto lbl_45
        end
    end

    print("$CameraLookTrigger$ quest is nil " .. self.alias)
    actorMgr.GadgetTriggerDic[self.alias] = nil
    self:DestroySelf()
    do
        return
    end

    ::lbl_45::
    actorInternal.uActor:RequestInteraction(actorInternal:GetRealAlias(gadgetTrigger.npcAlias), nil, gadgetTrigger.interHighPriority, true)
    actorInternal:ClearNpcTriggerData(self.alias)
    actorMgr.GadgetTriggerDic[self.alias] = nil
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ DestroySelf " .. self.alias)
    end

    self:DestroySelf()
end

function CreateNPCWithCameraLookTrigger:TriggerOut()
    if NG_HSOD_DEBUG then
        print("$CameraLookTrigger$ TriggerOut")
    end

    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        return
    end

    gadgetTrigger.lightUpTriggered = false
end

return CreateNPCWithCameraLookTrigger
