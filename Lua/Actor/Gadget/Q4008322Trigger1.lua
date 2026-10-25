require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008322Trigger1 = class("Q4008322Trigger1", GadgetActorProxy)
Q4008322Trigger1.defaultAlias = "Q4008322Trigger1"
local Q40083ClientConfig = require("Quest/Client/Q40083ClientConfig")

local subIDs = Q40083ClientConfig.SubIDs
local npcs = Q40083ClientConfig.Npcs
local datas = Q40083ClientConfig.Datas

function Q4008322Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008322Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008322Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008322)
    self:DestroySelf()
end

function Q4008322Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q4008322Trigger1
