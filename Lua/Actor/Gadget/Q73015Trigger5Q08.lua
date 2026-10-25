require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015Trigger5Q08 = class("Q73015Trigger5Q08", GadgetActorProxy)
Q73015Trigger5Q08.defaultAlias = "Q73015Trigger5Q08"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015Trigger5Q08:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015Trigger5Q08:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015Trigger5Q08:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301508)
    self:DestroySelf()
end

function Q73015Trigger5Q08:TriggerOut()
    print("TriggerOut")
end

return Q73015Trigger5Q08
