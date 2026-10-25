require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018503Trigger = class("Q4018503Trigger", GadgetActorProxy)
Q4018503Trigger.defaultAlias = "Q4018503Trigger"
local Q40185ClientConfig = require("Quest/Client/Q40185ClientConfig")

local this
local subIDs = Q40185ClientConfig.SubIDs
local datas = Q40185ClientConfig.Datas
local npcs = Q40185ClientConfig.Npcs
local points = Q40185ClientConfig.Points

function Q4018503Trigger:OnPostDataPrepare()
    print("Q4018503Trigger - OnPostDataPrepare")
    this = self
end

function Q4018503Trigger:OnPostComponentPrepare()
    print("Q4018503Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40185)
end

function Q4018503Trigger:TriggerIn()
    print("Q4018503Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4018503)
    this:DestroySelf()
end

function Q4018503Trigger:PreTriggerIn()
    print("Q4018503Trigger - PreTriggerIn")
end

function Q4018503Trigger:LightUpTriggerIn()
    print("Q4018503Trigger - LightUpTriggerIn")
end

function Q4018503Trigger:TriggerOut()
    print("Q4018503Trigger - TriggerOut")
end

return Q4018503Trigger
