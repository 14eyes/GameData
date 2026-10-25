require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73015Trigger2Q05 = class("Q73015Trigger2Q05", GadgetActorProxy)
Q73015Trigger2Q05.defaultAlias = "Q73015Trigger2Q05"
local Q73015ClientConfig = require("Quest/Client/Q73015ClientConfig")

local subIDs = Q73015ClientConfig.SubIDs
local npcs = Q73015ClientConfig.Npcs
local datas = Q73015ClientConfig.Datas

function Q73015Trigger2Q05:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73015Trigger2Q05:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73015Trigger2Q05:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7301505)
    self:DestroySelf()
end

function Q73015Trigger2Q05:TriggerOut()
    print("TriggerOut")
end

return Q73015Trigger2Q05
