require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger4 = class("Q1029Trigger4", GadgetActorProxy)
Q1029Trigger4.defaultAlias = "Q1029Trigger4"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 102913)
    self:DestroySelf()
end

function Q1029Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger4
