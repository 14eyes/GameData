require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1030Trigger2 = class("Q1030Trigger2", GadgetActorProxy)
Q1030Trigger2.defaultAlias = "Q1030Trigger2"
local Q1030ClientConfig = require("Quest/Client/Q1030ClientConfig")

local subIDs = Q1030ClientConfig.SubIDs
local npcs = Q1030ClientConfig.Npcs
local datas = Q1030ClientConfig.Datas

function Q1030Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1030Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1030Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 103016)
    self:DestroySelf()
end

function Q1030Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q1030Trigger2
