require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73054Trigger14 = class("Q73054Trigger14", GadgetActorProxy)
Q73054Trigger14.defaultAlias = "Q73054Trigger14"
local Q73054ClientConfig = require("Quest/Client/Q73054ClientConfig")

local subIDs = Q73054ClientConfig.SubIDs
local npcs = Q73054ClientConfig.Npcs
local datas = Q73054ClientConfig.Datas

function Q73054Trigger14:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73054Trigger14:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73054Trigger14:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305446)
    self:DestroySelf()
end

function Q73054Trigger14:TriggerOut()
    print("TriggerOut")
end

return Q73054Trigger14
