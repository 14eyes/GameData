require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020306Trigger = class("Q4020306Trigger", GadgetActorProxy)
Q4020306Trigger.defaultAlias = "Q4020306Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020306Trigger:OnPostDataPrepare()
    print("Q4020306Trigger - OnPostDataPrepare")
    this = self
end

function Q4020306Trigger:OnPostComponentPrepare()
    print("Q4020306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020306Trigger:TriggerIn()
    print("Q4020306Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4020306Trigger:PreTriggerIn()
    print("Q4020306Trigger - PreTriggerIn")
end

function Q4020306Trigger:LightUpTriggerIn()
    print("Q4020306Trigger - LightUpTriggerIn")
end

function Q4020306Trigger:TriggerOut()
    print("Q4020306Trigger - TriggerOut")
end

return Q4020306Trigger
