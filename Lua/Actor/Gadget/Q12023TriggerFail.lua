require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12023TriggerFail = class("Q12023TriggerFail", GadgetActorProxy)
Q12023TriggerFail.defaultAlias = "Q12023TriggerFail"
local Q12023ClientConfig = require("Quest/Client/Q12023ClientConfig")

local subIDs = Q12023ClientConfig.SubIDs
local npcs = Q12023ClientConfig.Npcs

function Q12023TriggerFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12023TriggerFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12023TriggerFail:TriggerIn()
    print("TriggerIn")
end

function Q12023TriggerFail:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12023"):FinishQuestID(true, 1202304)
    self:DestroySelf()
end

return Q12023TriggerFail
