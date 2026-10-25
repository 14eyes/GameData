require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local RequestInteractionNPCTrigger = class("RequestInteractionNPCTrigger", GadgetActorProxy)
RequestInteractionNPCTrigger.defaultAlias = "RequestInteractionNPCTrigger"
function RequestInteractionNPCTrigger:OnPostDataPrepare() end

function RequestInteractionNPCTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare:" .. self.alias)
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    if gadgetTrigger.useQuestMode then
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, nil, gadgetTrigger.mainQuestID)
    else
        self:AddComponentTrigger(gadgetTrigger.dist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut)
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

function RequestInteractionNPCTrigger:TriggerIn()
    print("TriggerIn")
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("TriggerIn " .. self.alias .. " npc:" .. gadgetTrigger.npcID)
    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        actorInternal:RequestInteraction(gadgetTrigger.npcAlias, nil, gadgetTrigger.interHighPriority)
        actorInternal:ClearNpcTriggerData(self.alias)
    end

    actorMgr.GadgetTriggerDic[self.alias] = nil
    self:DestroySelf()
end

function RequestInteractionNPCTrigger:TriggerOut()
    print("TriggerOut")
end

return RequestInteractionNPCTrigger
