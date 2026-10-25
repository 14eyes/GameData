require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73053Trigger5 = class("Q73053Trigger5", GadgetActorProxy)
Q73053Trigger5.defaultAlias = "Q73053Trigger5"
local Q73053ClientConfig = require("Quest/Client/Q73053ClientConfig")

local subIDs = Q73053ClientConfig.SubIDs
local npcs = Q73053ClientConfig.Npcs
local datas = Q73053ClientConfig.Datas

function Q73053Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73053Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73053Trigger5:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305313)
    self:DestroySelf()
end

function Q73053Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q73053Trigger5
