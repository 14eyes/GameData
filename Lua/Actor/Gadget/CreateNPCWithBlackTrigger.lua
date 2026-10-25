require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CreateNPCWithBlackTrigger = class("CreateNPCWithBlackTrigger", GadgetActorProxy)
CreateNPCWithBlackTrigger.defaultAlias = "CreateNPCWithBlackTrigger"

function CreateNPCWithBlackTrigger:OnPostDataPrepare()
    print("CreateNPCWithBlackTrigger - OnPostDataPrepare")
end

function CreateNPCWithBlackTrigger:OnPostComponentPrepare()
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

function CreateNPCWithBlackTrigger:TriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("TriggerIn alias:" .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
    self:ShowBlackScreen(gadgetTrigger.durationToBlack, gadgetTrigger.durationKeepBlack, gadgetTrigger.durationFromBlack, function(arg1)
        if arg1 == nil then
            return
        end

        if gadgetTrigger == nil then
            print("triggerData is nil " .. arg1.alias)
            return
        end

        local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
        if actorInternal ~= nil then
            if gadgetTrigger.hideDailyNpc == true then
                actorInternal:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
            end

            actorInternal:CreateQuestNpcById(gadgetTrigger.questID, gadgetTrigger.npcID, gadgetTrigger.npcIndex)
            actorInternal:RequestInteraction(gadgetTrigger.npcAlias, nil, gadgetTrigger.interHighPriority)
            actorInternal:ClearNpcTriggerData(arg1.alias)
        end

        actorMgr.GadgetTriggerDic[arg1.alias] = nil
        arg1:DestroySelf()
    end)
end

function CreateNPCWithBlackTrigger:TriggerOut()
    print("TriggerOut")
end

return CreateNPCWithBlackTrigger
