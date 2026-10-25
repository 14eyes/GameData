require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40050Trigger = class("Q40050Trigger", GadgetActorProxy)
Q40050Trigger.defaultAlias = "Q40050Trigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q40050Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40050Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40050Trigger:TriggerIn()
    print("TriggerIn")
end

function Q40050Trigger:TriggerOut()
    print("TriggerOut")
end

return Q40050Trigger
