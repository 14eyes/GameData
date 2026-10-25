require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12035Trigger = class("Q12035Trigger", GadgetActorProxy)
Q12035Trigger.defaultAlias = "Q12035Trigger"
local Q12035ClientConfig = require("Quest/Client/Q12035ClientConfig")

local subIDs = Q12035ClientConfig.SubIDs
local npcs = Q12035ClientConfig.Npcs
local datas = Q12035ClientConfig.Datas

function Q12035Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12035Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(190, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12035Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203502)
    self:DestroySelf()
end

function Q12035Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12035Trigger
