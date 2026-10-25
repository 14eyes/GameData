require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12038Trigger8 = class("Q12038Trigger8", GadgetActorProxy)
Q12038Trigger8.defaultAlias = "Q12038Trigger8"
local Q12038ClientConfig = require("Quest/Client/Q12038ClientConfig")

local subIDs = Q12038ClientConfig.SubIDs
local npcs = Q12038ClientConfig.Npcs
local datas = Q12038ClientConfig.Datas

function Q12038Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12038Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12038Trigger8:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203820)
    self:DestroySelf()
end

function Q12038Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q12038Trigger8
