require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701508Trigger = class("Q701508Trigger", GadgetActorProxy)
Q701508Trigger.defaultAlias = "Q701508Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701508Trigger:OnPostDataPrepare()
    print("Q701508Trigger - OnPostDataPrepare")
    this = self
end

function Q701508Trigger:OnPostComponentPrepare()
    print("Q701508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(56.8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701508Trigger:TriggerIn()
    print("Q701508Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701508})
    this:DestroySelf()
end

function Q701508Trigger:PreTriggerIn()
    print("Q701508Trigger - PreTriggerIn")
end

function Q701508Trigger:LightUpTriggerIn()
    print("Q701508Trigger - LightUpTriggerIn")
end

function Q701508Trigger:TriggerOut()
    print("Q701508Trigger - TriggerOut")
end

return Q701508Trigger
