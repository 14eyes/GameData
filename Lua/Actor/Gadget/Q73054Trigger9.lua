require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73054Trigger9 = class("Q73054Trigger9", GadgetActorProxy)
Q73054Trigger9.defaultAlias = "Q73054Trigger9"
local Q73054ClientConfig = require("Quest/Client/Q73054ClientConfig")

local subIDs = Q73054ClientConfig.SubIDs
local npcs = Q73054ClientConfig.Npcs
local datas = Q73054ClientConfig.Datas

function Q73054Trigger9:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73054Trigger9:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73054Trigger9:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305428)
    self:DestroySelf()
end

function Q73054Trigger9:TriggerOut()
    print("TriggerOut")
end

return Q73054Trigger9
