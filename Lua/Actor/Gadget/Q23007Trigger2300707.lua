require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23007Trigger2300707 = class("Q23007Trigger2300707", GadgetActorProxy)
Q23007Trigger2300707.defaultAlias = "Q23007Trigger2300707"
local Q23007ClientConfig = require("Quest/Client/Q23007ClientConfig")

local subIDs = Q23007ClientConfig.SubIDs
local npcs = Q23007ClientConfig.Npcs
local datas = Q23007ClientConfig.Datas

function Q23007Trigger2300707:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23007Trigger2300707:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23007Trigger2300707:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23007"):NarratorOnlyTaskByData(datas.NarratorWithId2300707)
    self:DestroySelf()
end

function Q23007Trigger2300707:TriggerOut()
    print("TriggerOut")
end

return Q23007Trigger2300707
