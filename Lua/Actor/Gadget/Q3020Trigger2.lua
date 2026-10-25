require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3020Trigger2 = class("Q3020Trigger2", GadgetActorProxy)
Q3020Trigger2.defaultAlias = "Q3020Trigger2"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q3020Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3020Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3020Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302011)
    self:DestroySelf()
end

function Q3020Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q3020Trigger2
