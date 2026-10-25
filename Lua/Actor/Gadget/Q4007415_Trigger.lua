require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007415_Trigger = class("Q4007415_Trigger", GadgetActorProxy)
Q4007415_Trigger.defaultAlias = "Q4007415_Trigger"
local Q40074ClientConfig = require("Quest/Client/Q40074ClientConfig")

local subIDs = Q40074ClientConfig.SubIDs
local npcs = Q40074ClientConfig.Npcs
local datas = Q40074ClientConfig.Datas

function Q4007415_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007415_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23.73142, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007415_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007415)
    self:DestroySelf()
end

function Q4007415_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007415_Trigger
