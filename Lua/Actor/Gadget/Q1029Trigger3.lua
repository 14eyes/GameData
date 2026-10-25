require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger3 = class("Q1029Trigger3", GadgetActorProxy)
Q1029Trigger3.defaultAlias = "Q1029Trigger3"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger3:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 102912)
    self:DestroySelf()
end

function Q1029Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger3
