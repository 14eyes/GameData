require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306137Trigger = class("Q7306137Trigger", GadgetActorProxy)
Q7306137Trigger.defaultAlias = "Q7306137Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306137Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306137Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306137Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306137)
    self:DestroySelf()
end

function Q7306137Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306137Trigger
