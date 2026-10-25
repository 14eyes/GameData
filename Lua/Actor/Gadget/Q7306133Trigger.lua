require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7306133Trigger = class("Q7306133Trigger", GadgetActorProxy)
Q7306133Trigger.defaultAlias = "Q7306133Trigger"
local Q73061ClientConfig = require("Quest/Client/Q73061ClientConfig")

local subIDs = Q73061ClientConfig.SubIDs
local npcs = Q73061ClientConfig.Npcs
local datas = Q73061ClientConfig.Datas

function Q7306133Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7306133Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7306133Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306133)
    self:DestroySelf()
end

function Q7306133Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7306133Trigger
