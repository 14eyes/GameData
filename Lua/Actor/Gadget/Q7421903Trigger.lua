require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421903Trigger = class("Q7421903Trigger", GadgetActorProxy)
Q7421903Trigger.defaultAlias = "Q7421903Trigger"
local Q74219ClientConfig = require("Quest/Client/Q74219ClientConfig")

local this
local subIDs = Q74219ClientConfig.SubIDs

function Q7421903Trigger:OnPostDataPrepare()
    print("[MainId: 74219][Trigger: Q7421903Trigger] OnPostDataPrepare")
    this = self
end

function Q7421903Trigger:OnPostComponentPrepare()
    print("[MainId: 74219][Trigger: Q7421903Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74219)
end

function Q7421903Trigger:TriggerIn()
    print("[MainId: 74219][Trigger: Q7421903Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74219")
    local questVar = actor:GetQuestVar(7421903, 0)
    if questVar == 0 then
        actor:SetQuestVarByMainId(0, 1)
        actorUtils.FinishQuestID(false, 7421903)
        this:DestroySelf()
    elseif questVar == 1 then
        local v = actor:GetQuestVar(7421903, 1)
        if v == 0 then
            actor:SetQuestVarByMainId(1, 1)
            actorUtils.FinishQuestID(false, 7421903)
            this:DestroySelf()
        elseif v == 1 then
            if actor:GetQuestVar(7421903, 2) == 0 then
                actor:SetQuestVarByMainId(2, 1)
                actorUtils.FinishQuestID(false, 7421903)
                this:DestroySelf()
            end
        end
    end
end

function Q7421903Trigger:PreTriggerIn()
    print("[MainId: 74219][Trigger: Q7421903Trigger] PreTriggerIn")
end

function Q7421903Trigger:LightUpTriggerIn()
    print("[MainId: 74219][Trigger: Q7421903Trigger] LightUpTriggerIn")
end

function Q7421903Trigger:TriggerOut()
    print("[MainId: 74219][Trigger: Q7421903Trigger] TriggerOut")
end

return Q7421903Trigger
