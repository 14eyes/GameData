require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008323Trigger = class("Q4008323Trigger", GadgetActorProxy)
Q4008323Trigger.defaultAlias = "Q4008323Trigger"
local Q40083ClientConfig = require("Quest/Client/Q40083ClientConfig")

local subIDs = Q40083ClientConfig.SubIDs
local npcs = Q40083ClientConfig.Npcs
local datas = Q40083ClientConfig.Datas

function Q4008323Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008323Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008323Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008323)
    self:DestroySelf()
end

function Q4008323Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008323Trigger
