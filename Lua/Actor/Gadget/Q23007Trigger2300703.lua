require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23007Trigger2300703 = class("Q23007Trigger2300703", GadgetActorProxy)
Q23007Trigger2300703.defaultAlias = "Q23007Trigger2300703"
local Q23007ClientConfig = require("Quest/Client/Q23007ClientConfig")

local subIDs = Q23007ClientConfig.SubIDs
local npcs = Q23007ClientConfig.Npcs
local datas = Q23007ClientConfig.Datas

function Q23007Trigger2300703:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23007Trigger2300703:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23007Trigger2300703:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23007"):NarratorOnlyTaskByData(datas.NarratorWithId2300703)
    self:DestroySelf()
end

function Q23007Trigger2300703:TriggerOut()
    print("TriggerOut")
end

return Q23007Trigger2300703
