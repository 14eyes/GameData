require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007TrapTrigger = class("Q3007TrapTrigger", GadgetActorProxy)
Q3007TrapTrigger.defaultAlias = "Q3007TrapTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007TrapTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007TrapTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007TrapTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300707)
    self:DestroySelf()
end

function Q3007TrapTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007TrapTrigger
