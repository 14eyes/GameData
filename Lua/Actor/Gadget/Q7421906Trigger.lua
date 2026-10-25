require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421906Trigger = class("Q7421906Trigger", GadgetActorProxy)
Q7421906Trigger.defaultAlias = "Q7421906Trigger"
local Q74219ClientConfig = require("Quest/Client/Q74219ClientConfig")

local this
local subIDs = Q74219ClientConfig.SubIDs

function Q7421906Trigger:OnPostDataPrepare()
    print("[MainId: 74219][Trigger: Q7421906Trigger] OnPostDataPrepare")
    this = self
end

function Q7421906Trigger:OnPostComponentPrepare()
    print("[MainId: 74219][Trigger: Q7421906Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74219)
end

function Q7421906Trigger:TriggerIn()
    print("[MainId: 74219][Trigger: Q7421906Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74219")
    local questVar = actor:GetQuestVar(7421906, 0)
    if questVar == 0 then
        actor:SetQuestVarByMainId(0, 1)
        actorUtils.FinishQuestID(false, 7421906)
        this:DestroySelf()
    elseif questVar == 1 then
        local v = actor:GetQuestVar(7421906, 1)
        if v == 0 then
            actor:SetQuestVarByMainId(1, 1)
            actorUtils.FinishQuestID(false, 7421906)
            this:DestroySelf()
        elseif v == 1 then
            if actor:GetQuestVar(7421906, 2) == 0 then
                actor:SetQuestVarByMainId(2, 1)
                actorUtils.FinishQuestID(false, 7421906)
                this:DestroySelf()
            end
        end
    end
end

function Q7421906Trigger:PreTriggerIn()
    print("[MainId: 74219][Trigger: Q7421906Trigger] PreTriggerIn")
end

function Q7421906Trigger:LightUpTriggerIn()
    print("[MainId: 74219][Trigger: Q7421906Trigger] LightUpTriggerIn")
end

function Q7421906Trigger:TriggerOut()
    print("[MainId: 74219][Trigger: Q7421906Trigger] TriggerOut")
end

return Q7421906Trigger
