require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12038Trigger7 = class("Q12038Trigger7", GadgetActorProxy)
Q12038Trigger7.defaultAlias = "Q12038Trigger7"
local Q12038ClientConfig = require("Quest/Client/Q12038ClientConfig")

local subIDs = Q12038ClientConfig.SubIDs
local npcs = Q12038ClientConfig.Npcs
local datas = Q12038ClientConfig.Datas

function Q12038Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12038Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12038Trigger7:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203819)
    self:DestroySelf()
end

function Q12038Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q12038Trigger7
