require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73014Trigger2 = class("Q73014Trigger2", GadgetActorProxy)
Q73014Trigger2.defaultAlias = "Q73014Trigger2"
local Q73014ClientConfig = require("Quest/Client/Q73014ClientConfig")

local subIDs = Q73014ClientConfig.SubIDs
local npcs = Q73014ClientConfig.Npcs
local datas = Q73014ClientConfig.Datas

function Q73014Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73014Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73014Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301411)
    self:DestroySelf()
end

function Q73014Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q73014Trigger2
