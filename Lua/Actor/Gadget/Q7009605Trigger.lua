require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009605Trigger = class("Q7009605Trigger", GadgetActorProxy)
Q7009605Trigger.defaultAlias = "Q7009605Trigger"
local Q70096ClientConfig = require("Quest/Client/Q70096ClientConfig")

local this
local subIDs = Q70096ClientConfig.SubIDs
local datas = Q70096ClientConfig.Datas
local npcs = Q70096ClientConfig.Npcs
local points = Q70096ClientConfig.Points

function Q7009605Trigger:OnPostDataPrepare()
    print("Q7009605Trigger - OnPostDataPrepare")
    this = self
end

function Q7009605Trigger:OnPostComponentPrepare()
    print("Q7009605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(110, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70096)
end

function Q7009605Trigger:TriggerIn()
    print("Q7009605Trigger - TriggerIn")
end

function Q7009605Trigger:PreTriggerIn()
    print("Q7009605Trigger - PreTriggerIn")
end

function Q7009605Trigger:LightUpTriggerIn()
    print("Q7009605Trigger - LightUpTriggerIn")
end

function Q7009605Trigger:TriggerOut()
    print("Q7009605Trigger - TriggerOut")
end

return Q7009605Trigger
