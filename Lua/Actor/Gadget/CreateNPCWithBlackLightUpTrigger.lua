require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CreateNPCWithBlackLightUpTrigger = class("CreateNPCWithBlackLightUpTrigger", GadgetActorProxy)
CreateNPCWithBlackLightUpTrigger.defaultAlias = "CreateNPCWithBlackLightUpTrigger"
function CreateNPCWithBlackLightUpTrigger:OnPostDataPrepare() end

function CreateNPCWithBlackLightUpTrigger:OnPostComponentPrepare()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$Type1$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$Type1$ OnPostComponentPrepare: " .. self.alias)
    end

    gadgetTrigger.lightUpTriggered = false
    if gadgetTrigger.useQuestMode then
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn, gadgetTrigger.mainQuestID)
    else
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, self.LightUpTriggerIn)
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

function CreateNPCWithBlackLightUpTrigger:TriggerIn()
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
        print("$Type1$ TriggerIn alias: " .. self.alias)
    end

    self:LightUpTriggerIn()
end

function CreateNPCWithBlackLightUpTrigger:LightUpTriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$Type1$ triggerData is nil " .. self.alias)
        return
    end

    gadgetTrigger.lightUpTriggered = true
    if NG_HSOD_DEBUG then
        print("$Type1$ LightUpTriggerIn alias: " .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal == nil then
        print("$Type1$ quest is nil " .. self.alias)
        actorMgr.GadgetTriggerDic[self.alias] = nil
        self.DestroySelf(self)
        return
    end

    local entityCreateTask = curtainUtils.CreateEntityCreateTask({gadgetTrigger.npcAlias})
    self.ShowBlackScreen(self, gadgetTrigger.durationToBlack, gadgetTrigger.durationKeepBlack, gadgetTrigger.durationFromBlack, function()
        if gadgetTrigger.hideDailyNpc == true then
            actorInternal:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
        end

        actorInternal:CreateQuestNpcById(gadgetTrigger.questID, gadgetTrigger.npcID, gadgetTrigger.npcIndex)
        self:OnBlackScreenFadeIn()
    end, nil, entityCreateTask)
end

function CreateNPCWithBlackLightUpTrigger:OnBlackScreenFadeIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("$Type1$ triggerData is nil " .. self.alias)
        return
    end

    if NG_HSOD_DEBUG then
        print("$Type1$ BlackTrigger OnBlackScreenFadeIn" .. self.alias)
    end

    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        actorInternal:RequestInteraction(gadgetTrigger.npcAlias, nil, gadgetTrigger.interHighPriority)
        actorInternal:ClearNpcTriggerData(self.alias)
    else
        if NG_HSOD_DEBUG then
            print("$Type1$ OnBlackScreenEnd Fail alias:" .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
        end
    end

    actorMgr.GadgetTriggerDic[self.alias] = nil
    self:DestroySelf()
end

function CreateNPCWithBlackLightUpTrigger:TriggerOut()
    if NG_HSOD_DEBUG then
        print("$Type1$ TriggerOut")
    end

    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        return
    end

    gadgetTrigger.lightUpTriggered = false
end

return CreateNPCWithBlackLightUpTrigger
