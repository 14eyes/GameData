require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7051801Trigger = class("Q7051801Trigger", GadgetActorProxy)
Q7051801Trigger.defaultAlias = "Q7051801Trigger"
local Q70518ClientConfig = require("Quest/Client/Q70518ClientConfig")

local subIDs = Q70518ClientConfig.SubIDs
local npcs = Q70518ClientConfig.Npcs
local datas = Q70518ClientConfig.Datas

function Q7051801Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7051801Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7051801Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7051801)
    self:DestroySelf()
end

function Q7051801Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7051801Trigger
