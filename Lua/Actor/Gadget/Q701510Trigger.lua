require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701510Trigger = class("Q701510Trigger", GadgetActorProxy)
Q701510Trigger.defaultAlias = "Q701510Trigger"
local Q7015ClientConfig = require("Quest/Client/Q7015ClientConfig")

local this
local subIDs = Q7015ClientConfig.SubIDs
local datas = Q7015ClientConfig.Datas
local npcs = Q7015ClientConfig.Npcs
local points = Q7015ClientConfig.Points

function Q701510Trigger:OnPostDataPrepare()
    print("Q701510Trigger - OnPostDataPrepare")
    this = self
end

function Q701510Trigger:OnPostComponentPrepare()
    print("Q701510Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6.7167764, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7015)
end

function Q701510Trigger:TriggerIn()
    print("Q701510Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 701510)
    this:DestroySelf()
end

function Q701510Trigger:PreTriggerIn()
    print("Q701510Trigger - PreTriggerIn")
end

function Q701510Trigger:LightUpTriggerIn()
    print("Q701510Trigger - LightUpTriggerIn")
end

function Q701510Trigger:TriggerOut()
    print("Q701510Trigger - TriggerOut")
end

return Q701510Trigger
