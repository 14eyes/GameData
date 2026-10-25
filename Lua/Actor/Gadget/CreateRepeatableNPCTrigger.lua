require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CreateRepeatableNPCTrigger = class("CreateRepeatableNPCTrigger", GadgetActorProxy)
CreateRepeatableNPCTrigger.defaultAlias = "CreateRepeatableNPCTrigger"

function CreateRepeatableNPCTrigger:OnPostDataPrepare()
    print("CreateRepeatableNPCTrigger - OnPostDataPrepare")
end

function CreateRepeatableNPCTrigger:OnPostComponentPrepare()
    print("CreateRepeatableNPCTrigger:" .. self.alias)
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    if gadgetTrigger.useQuestMode then
        self:AddSimpleTriggerWithDiffDistance(gadgetTrigger.dist, gadgetTrigger.outDist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut, nil, nil, nil, gadgetTrigger.mainQuestID)
    else
        self:AddSimpleTriggerWithDiffDistance(gadgetTrigger.dist, gadgetTrigger.outDist, DistType.EULER, gadgetTrigger.offset, self.TriggerIn, self.TriggerOut)
    end
end

function CreateRepeatableNPCTrigger:TriggerIn()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("RepeatableNPC TriggerIn alias:" .. self.alias .. " npcID=" .. gadgetTrigger.npcID)
    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        if gadgetTrigger.hideDailyNpc == true then
            actorInternal:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
        end

        actorInternal:CreateQuestNpcById(gadgetTrigger.questID, gadgetTrigger.npcID, gadgetTrigger.npcIndex)
    end
end

function CreateRepeatableNPCTrigger:TriggerOut()
    local gadgetTrigger = actorMgr.GadgetTriggerDic[self.alias]
    if gadgetTrigger == nil then
        print("triggerData is nil " .. self.alias)
        return
    end

    print("RepeatableNPC TriggerOut")
    local actorInternal = actorMgr:GetActorInternal(gadgetTrigger.actorAlias)
    if actorInternal ~= nil then
        if gadgetTrigger.hideDailyNpc == true then
            actorInternal:NotifyToNpcById(gadgetTrigger.npcID, 0, 1, true, {NpcNotifyPriority.Max})
        end

        local realAlias = actorInternal:GetRealAlias(gadgetTrigger.npcAlias)
        local actor = actorMgr:GetActor(realAlias)
        if actor ~= nil then
            actor:DestroyWithDisappear(false)
        else
            actorInternal:DestroyQuestNpcActorByAlias(gadgetTrigger.npcAlias, false)
        end
    end
end

return CreateRepeatableNPCTrigger
