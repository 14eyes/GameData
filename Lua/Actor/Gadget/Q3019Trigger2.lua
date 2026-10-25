require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3019Trigger2 = class("Q3019Trigger2", GadgetActorProxy)
Q3019Trigger2.defaultAlias = "Q3019Trigger2"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q3019Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3019Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3019Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301912)
    self:DestroySelf()
end

function Q3019Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q3019Trigger2
