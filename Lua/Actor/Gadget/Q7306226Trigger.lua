require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306226Trigger = class("Q7306226Trigger", GadgetActorProxy)
Q7306226Trigger.defaultAlias = "Q7306226Trigger"
local Q73062ClientConfig = require("Quest/Client/Q73062ClientConfig")

local subIDs = Q73062ClientConfig.SubIDs
local npcs = Q73062ClientConfig.Npcs
local datas = Q73062ClientConfig.Datas

function Q7306226Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306226Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306226Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306226)
    self:DestroySelf()
end

function Q7306226Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306226Trigger
