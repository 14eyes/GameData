require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23007Trigger2300704 = class("Q23007Trigger2300704", GadgetActorProxy)
Q23007Trigger2300704.defaultAlias = "Q23007Trigger2300704"
local Q23007ClientConfig = require("Quest/Client/Q23007ClientConfig")

local subIDs = Q23007ClientConfig.SubIDs
local npcs = Q23007ClientConfig.Npcs
local datas = Q23007ClientConfig.Datas

function Q23007Trigger2300704:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23007Trigger2300704:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q23007Trigger2300704:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300704)
    self:DestroySelf()
end

function Q23007Trigger2300704:TriggerOut()
    print("TriggerOut")
end

return Q23007Trigger2300704
