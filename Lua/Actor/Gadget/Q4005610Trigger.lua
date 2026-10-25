require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005610Trigger = class("Q4005610Trigger", GadgetActorProxy)
Q4005610Trigger.defaultAlias = "Q4005610Trigger"
local Q40056ClientConfig = require("Quest/Client/Q40056ClientConfig")

local subIDs = Q40056ClientConfig.SubIDs
local npcs = Q40056ClientConfig.Npcs
local datas = Q40056ClientConfig.Datas

function Q4005610Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005610Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005610Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40056"):RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q4005610Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005610Trigger
