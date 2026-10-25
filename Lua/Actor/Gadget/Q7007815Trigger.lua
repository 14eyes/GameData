require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007815Trigger = class("Q7007815Trigger", GadgetActorProxy)
Q7007815Trigger.defaultAlias = "Q7007815Trigger"
local Q70078ClientConfig = require("Quest/Client/Q70078ClientConfig")

local this
local subIDs = Q70078ClientConfig.SubIDs
local datas = Q70078ClientConfig.Datas
local npcs = Q70078ClientConfig.Npcs
local points = Q70078ClientConfig.Points

function Q7007815Trigger:OnPostDataPrepare()
    print("Q7007815Trigger - OnPostDataPrepare")
    this = self
end

function Q7007815Trigger:OnPostComponentPrepare()
    print("Q7007815Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70078)
end

function Q7007815Trigger:TriggerIn()
    print("Q7007815Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7007815)
    this:DestroySelf()
end

function Q7007815Trigger:PreTriggerIn()
    print("Q7007815Trigger - PreTriggerIn")
end

function Q7007815Trigger:LightUpTriggerIn()
    print("Q7007815Trigger - LightUpTriggerIn")
end

function Q7007815Trigger:TriggerOut()
    print("Q7007815Trigger - TriggerOut")
end

return Q7007815Trigger
