require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3020Trigger3 = class("Q3020Trigger3", GadgetActorProxy)
Q3020Trigger3.defaultAlias = "Q3020Trigger3"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q3020Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3020Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3020Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302013)
    self:DestroySelf()
end

function Q3020Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q3020Trigger3
