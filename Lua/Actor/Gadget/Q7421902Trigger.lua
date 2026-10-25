require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7421902Trigger = class("Q7421902Trigger", GadgetActorProxy)
Q7421902Trigger.defaultAlias = "Q7421902Trigger"
local Q74219ClientConfig = require("Quest/Client/Q74219ClientConfig")

local this
local subIDs = Q74219ClientConfig.SubIDs

function Q7421902Trigger:OnPostDataPrepare()
    print("[MainId: 74219][Trigger: Q7421902Trigger] OnPostDataPrepare")
    this = self
end

function Q7421902Trigger:OnPostComponentPrepare()
    print("[MainId: 74219][Trigger: Q7421902Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74219)
end

function Q7421902Trigger:TriggerIn()
    print("[MainId: 74219][Trigger: Q7421902Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74219")
    local questVar = actor:GetQuestVar(7421902, 0)
    if questVar == 0 then
        actor:SetQuestVarByMainId(0, 1)
        print("7421902 set index 0 as 1")
        actorUtils.FinishQuestID(false, 7421902)
        this:DestroySelf()
    elseif questVar == 1 then
        local v = actor:GetQuestVar(7421902, 1)
        if v == 0 then
            actor:SetQuestVarByMainId(1, 1)
            print("7421902 set index 1 as 1")
            actorUtils.FinishQuestID(false, 7421902)
            this:DestroySelf()
        elseif v == 1 then
            if actor:GetQuestVar(7421902, 2) == 0 then
                actor:SetQuestVarByMainId(2, 1)
                print("7421902 set index 2 as 1")
                actorUtils.FinishQuestID(false, 7421902)
                this:DestroySelf()
            end
        end
    end
end

function Q7421902Trigger:PreTriggerIn()
    print("[MainId: 74219][Trigger: Q7421902Trigger] PreTriggerIn")
end

function Q7421902Trigger:LightUpTriggerIn()
    print("[MainId: 74219][Trigger: Q7421902Trigger] LightUpTriggerIn")
end

function Q7421902Trigger:TriggerOut()
    print("[MainId: 74219][Trigger: Q7421902Trigger] TriggerOut")
end

return Q7421902Trigger
