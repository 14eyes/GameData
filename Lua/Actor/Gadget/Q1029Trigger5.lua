require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger5 = class("Q1029Trigger5", GadgetActorProxy)
Q1029Trigger5.defaultAlias = "Q1029Trigger5"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger5:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger5:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 102909)
    self:DestroySelf()
end

function Q1029Trigger5:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger5
