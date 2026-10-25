require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007TrapRunTrigger = class("Q3007TrapRunTrigger", GadgetActorProxy)
Q3007TrapRunTrigger.defaultAlias = "Q3007TrapRunTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007TrapRunTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007TrapRunTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007TrapRunTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300709)
    self:DestroySelf()
end

function Q3007TrapRunTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007TrapRunTrigger
