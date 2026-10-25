require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79045Trigger2 = class("Q79045Trigger2", GadgetActorProxy)
Q79045Trigger2.defaultAlias = "Q79045Trigger2"
local Q79045ClientConfig = require("Quest/Client/Q79045ClientConfig")

local this
local subIDs = Q79045ClientConfig.SubIDs
local npcs = Q79045ClientConfig.Npcs
local points = Q79045ClientConfig.Points

function Q79045Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q79045Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, sceneData:GetDummyPoint(10, "Q7904511_guide"), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q79045Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q79045Trigger2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q79045Trigger2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q79045Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q79045Trigger2
