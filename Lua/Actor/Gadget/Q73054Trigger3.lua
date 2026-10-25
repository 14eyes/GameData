require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73054Trigger3 = class("Q73054Trigger3", GadgetActorProxy)
Q73054Trigger3.defaultAlias = "Q73054Trigger3"
local Q73054ClientConfig = require("Quest/Client/Q73054ClientConfig")

local subIDs = Q73054ClientConfig.SubIDs
local npcs = Q73054ClientConfig.Npcs
local datas = Q73054ClientConfig.Datas

function Q73054Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73054Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(25, 25, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73054Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7305405)
    self:DestroySelf()
end

function Q73054Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q73054Trigger3
