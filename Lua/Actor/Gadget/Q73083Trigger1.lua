require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73083Trigger1 = class("Q73083Trigger1", GadgetActorProxy)
Q73083Trigger1.defaultAlias = "Q73083Trigger1"
local Q73083ClientConfig = require("Quest/Client/Q73083ClientConfig")

local subIDs = Q73083ClientConfig.SubIDs
local npcs = Q73083ClientConfig.Npcs
local datas = Q73083ClientConfig.Datas

function Q73083Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73083Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73083Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7308309)
    self:DestroySelf()
end

function Q73083Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73083Trigger1
