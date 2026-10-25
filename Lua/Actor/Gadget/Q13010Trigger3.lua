require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13010Trigger3 = class("Q13010Trigger3", GadgetActorProxy)
Q13010Trigger3.defaultAlias = "Q13010Trigger3"
local Q13010ClientConfig = require("Quest/Client/Q13010ClientConfig")

local subIDs = Q13010ClientConfig.SubIDs
local npcs = Q13010ClientConfig.Npcs
local datas = Q13010ClientConfig.Datas

function Q13010Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13010Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13010Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301009)
    self:DestroySelf()
end

function Q13010Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q13010Trigger3
