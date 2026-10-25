require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73295Trigger2 = class("Q73295Trigger2", GadgetActorProxy)
Q73295Trigger2.defaultAlias = "Q73295Trigger2"
local Q73295ClientConfig = require("Quest/Client/Q73295ClientConfig")

local this
local subIDs = Q73295ClientConfig.SubIDs
local npcs = Q73295ClientConfig.Npcs
local points = Q73295ClientConfig.Points
local datas = Q73295ClientConfig.Datas

function Q73295Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73295Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73295Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7329510)
    this:DestroySelf()
end

function Q73295Trigger2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73295Trigger2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73295Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q73295Trigger2
