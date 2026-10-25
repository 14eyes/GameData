require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421905Trigger = class("Q7421905Trigger", GadgetActorProxy)
Q7421905Trigger.defaultAlias = "Q7421905Trigger"
local Q74219ClientConfig = require("Quest/Client/Q74219ClientConfig")

local this
local subIDs = Q74219ClientConfig.SubIDs

function Q7421905Trigger:OnPostDataPrepare()
    print("[MainId: 74219][Trigger: Q7421905Trigger] OnPostDataPrepare")
    this = self
end

function Q7421905Trigger:OnPostComponentPrepare()
    print("[MainId: 74219][Trigger: Q7421905Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74219)
end

function Q7421905Trigger:TriggerIn()
    print("[MainId: 74219][Trigger: Q7421905Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74219")
    local questVar = actor:GetQuestVar(7421905, 0)
    if questVar == 0 then
        actor:SetQuestVarByMainId(0, 1)
        this:DestroySelf()
    elseif questVar == 1 then
        local v = actor:GetQuestVar(7421905, 1)
        if v == 0 then
            actor:SetQuestVarByMainId(1, 1)
            actorUtils.FinishQuestID(false, 7421905)
            this:DestroySelf()
        elseif v == 1 then
            if actor:GetQuestVar(7421905, 2) == 0 then
                actor:SetQuestVarByMainId(2, 1)
                actorUtils.FinishQuestID(false, 7421905)
                this:DestroySelf()
            end
        end
    end
end

function Q7421905Trigger:PreTriggerIn()
    print("[MainId: 74219][Trigger: Q7421905Trigger] PreTriggerIn")
end

function Q7421905Trigger:LightUpTriggerIn()
    print("[MainId: 74219][Trigger: Q7421905Trigger] LightUpTriggerIn")
end

function Q7421905Trigger:TriggerOut()
    print("[MainId: 74219][Trigger: Q7421905Trigger] TriggerOut")
end

return Q7421905Trigger
