require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12033Trigger2 = class("Q12033Trigger2", GadgetActorProxy)
Q12033Trigger2.defaultAlias = "Q12033Trigger2"
local Q12033ClientConfig = require("Quest/Client/Q12033ClientConfig")

local subIDs = Q12033ClientConfig.SubIDs
local npcs = Q12033ClientConfig.Npcs
local datas = Q12033ClientConfig.Datas

function Q12033Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12033Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12033Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203308)
    self:DestroySelf()
end

function Q12033Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q12033Trigger2
