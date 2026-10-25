require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325727Trigger = class("Q7325727Trigger", GadgetActorProxy)
Q7325727Trigger.defaultAlias = "Q7325727Trigger"
local Q73257ClientConfig = require("Quest/Client/Q73257ClientConfig")

local this
local subIDs = Q73257ClientConfig.SubIDs
local npcs = Q73257ClientConfig.Npcs
local points = Q73257ClientConfig.Points
local datas = Q73257ClientConfig.Datas

function Q7325727Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325727Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325727Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325727)
    this:DestroySelf()
end

function Q7325727Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325727Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325727Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325727Trigger
