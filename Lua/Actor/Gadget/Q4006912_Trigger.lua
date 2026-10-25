require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006912_Trigger = class("Q4006912_Trigger", GadgetActorProxy)
Q4006912_Trigger.defaultAlias = "Q4006912_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q4006912_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006912_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(40, 40, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006912_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40069"):RequestInteraction(npcs.XianglingData.alias)
    self:DestroySelf()
end

function Q4006912_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006912_Trigger
