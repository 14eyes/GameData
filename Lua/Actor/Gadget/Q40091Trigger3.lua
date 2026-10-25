require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40091Trigger3 = class("Q40091Trigger3", GadgetActorProxy)
Q40091Trigger3.defaultAlias = "Q40091Trigger3"
local Q40091ClientConfig = require("Quest/Client/Q40091ClientConfig")

local this
local subIDs = Q40091ClientConfig.SubIDs
local npcs = Q40091ClientConfig.Npcs
local datas = Q40091ClientConfig.Datas

function Q40091Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40091Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(120, 250, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40091Trigger3:TriggerIn()
    print("TriggerIn")
end

function Q40091Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40091Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40091Trigger3:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveWeather()
    this:DestroySelf()
end

return Q40091Trigger3
