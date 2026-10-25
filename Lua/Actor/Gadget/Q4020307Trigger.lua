require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020307Trigger = class("Q4020307Trigger", GadgetActorProxy)
Q4020307Trigger.defaultAlias = "Q4020307Trigger"
local Q40203ClientConfig = require("Quest/Client/Q40203ClientConfig")

local this
local subIDs = Q40203ClientConfig.SubIDs
local datas = Q40203ClientConfig.Datas
local npcs = Q40203ClientConfig.Npcs
local points = Q40203ClientConfig.Points

function Q4020307Trigger:OnPostDataPrepare()
    print("Q4020307Trigger - OnPostDataPrepare")
    this = self
end

function Q4020307Trigger:OnPostComponentPrepare()
    print("Q4020307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40203)
end

function Q4020307Trigger:TriggerIn()
    print("Q4020307Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4020307Trigger:PreTriggerIn()
    print("Q4020307Trigger - PreTriggerIn")
end

function Q4020307Trigger:LightUpTriggerIn()
    print("Q4020307Trigger - LightUpTriggerIn")
end

function Q4020307Trigger:TriggerOut()
    print("Q4020307Trigger - TriggerOut")
end

return Q4020307Trigger
