require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7103502Trigger = class("Q7103502Trigger", GadgetActorProxy)
Q7103502Trigger.defaultAlias = "Q7103502Trigger"
local Q71035ClientConfig = require("Quest/Client/Q71035ClientConfig")

local subIDs = Q71035ClientConfig.SubIDs
local npcs = Q71035ClientConfig.Npcs
local datas = Q71035ClientConfig.Datas

function Q7103502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7103502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7103502Trigger:TriggerIn()
    print("TriggerIn")
end

function Q7103502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7103502Trigger
