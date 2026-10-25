require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73013Trigger_7301303 = class("Q73013Trigger_7301303", GadgetActorProxy)
Q73013Trigger_7301303.defaultAlias = "Q73013Trigger_7301303"
local Q73013ClientConfig = require("Quest/Client/Q73013ClientConfig")

local subIDs = Q73013ClientConfig.SubIDs
local npcs = Q73013ClientConfig.Npcs
local datas = Q73013ClientConfig.Datas

function Q73013Trigger_7301303:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73013Trigger_7301303:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73013Trigger_7301303:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73013"):RequestInteraction(npcs.Npc20649Data.alias)
    self:DestroySelf()
end

function Q73013Trigger_7301303:TriggerOut()
    print("TriggerOut")
end

return Q73013Trigger_7301303
