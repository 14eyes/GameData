require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7324404_Trigger = class("Q7324404_Trigger", GadgetActorProxy)
Q7324404_Trigger.defaultAlias = "Q7324404_Trigger"
local Q73244ClientConfig = require("Quest/Client/Q73244ClientConfig")

local this
local subIDs = Q73244ClientConfig.SubIDs
local npcs = Q73244ClientConfig.Npcs
local datas = Q73244ClientConfig.Datas

function Q7324404_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7324404_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(2.314, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7324404_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7324404)
    this:DestroySelf()
end

function Q7324404_Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7324404_Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7324404_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7324404_Trigger
