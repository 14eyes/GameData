require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421904Trigger = class("Q7421904Trigger", GadgetActorProxy)
Q7421904Trigger.defaultAlias = "Q7421904Trigger"
local Q74219ClientConfig = require("Quest/Client/Q74219ClientConfig")

local this
local subIDs = Q74219ClientConfig.SubIDs

function Q7421904Trigger:OnPostDataPrepare()
    print("[MainId: 74219][Trigger: Q7421904Trigger] OnPostDataPrepare")
    this = self
end

function Q7421904Trigger:OnPostComponentPrepare()
    print("[MainId: 74219][Trigger: Q7421904Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74219)
end

function Q7421904Trigger:TriggerIn()
    print("[MainId: 74219][Trigger: Q7421904Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74219")
    local questVar = actor:GetQuestVar(7421904, 0)
    if questVar == 0 then
        actor:SetQuestVarByMainId(0, 1)
        actorUtils.FinishQuestID(false, 7421904)
        this:DestroySelf()
    elseif questVar == 1 then
        local v = actor:GetQuestVar(7421904, 1)
        if v == 0 then
            actor:SetQuestVarByMainId(1, 1)
            actorUtils.FinishQuestID(false, 7421904)
            this:DestroySelf()
        elseif v == 1 then
            if actor:GetQuestVar(7421904, 2) == 0 then
                actor:SetQuestVarByMainId(2, 1)
                actorUtils.FinishQuestID(false, 7421904)
                this:DestroySelf()
            end
        end
    end
end

function Q7421904Trigger:PreTriggerIn()
    print("[MainId: 74219][Trigger: Q7421904Trigger] PreTriggerIn")
end

function Q7421904Trigger:LightUpTriggerIn()
    print("[MainId: 74219][Trigger: Q7421904Trigger] LightUpTriggerIn")
end

function Q7421904Trigger:TriggerOut()
    print("[MainId: 74219][Trigger: Q7421904Trigger] TriggerOut")
end

return Q7421904Trigger
