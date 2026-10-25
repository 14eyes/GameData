require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3011TrapRunTrigger = class("Q3011TrapRunTrigger", GadgetActorProxy)
Q3011TrapRunTrigger.defaultAlias = "Q3011TrapRunTrigger"
local Q3011ClientConfig = require("Quest/Client/Q3011ClientConfig")

local subIDs = Q3011ClientConfig.SubIDs
local npcs = Q3011ClientConfig.Npcs
local datas = Q3011ClientConfig.Datas

function Q3011TrapRunTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3011TrapRunTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3011TrapRunTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301117)
    self:DestroySelf()
end

function Q3011TrapRunTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3011TrapRunTrigger
