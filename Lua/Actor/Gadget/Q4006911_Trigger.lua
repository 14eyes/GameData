require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006911_Trigger = class("Q4006911_Trigger", GadgetActorProxy)
Q4006911_Trigger.defaultAlias = "Q4006911_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q4006911_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006911_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006911_Trigger:TriggerIn()
    print("TriggerIn")
    self:DestroySelf()
end

function Q4006911_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006911_Trigger
