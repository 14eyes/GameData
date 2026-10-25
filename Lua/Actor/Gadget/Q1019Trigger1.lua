require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1019Trigger1 = class("Q1019Trigger1", GadgetActorProxy)
Q1019Trigger1.defaultAlias = "Q1019Trigger1"
local Q1019ClientConfig = require("Quest/Client/Q1019ClientConfig")

local subIDs = Q1019ClientConfig.SubIDs
local npcs = Q1019ClientConfig.Npcs
local datas = Q1019ClientConfig.Datas

function Q1019Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1019Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1019Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 101901)
    self:DestroySelf()
end

function Q1019Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q1019Trigger1
