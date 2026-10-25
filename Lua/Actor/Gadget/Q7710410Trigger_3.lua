require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710410Trigger_3 = class("Q7710410Trigger_3", GadgetActorProxy)
Q7710410Trigger_3.defaultAlias = "Q7710410Trigger_3"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710410Trigger_3:OnPostDataPrepare()
    print("Q7710410Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q7710410Trigger_3:OnPostComponentPrepare()
    print("Q7710410Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710410Trigger_3:TriggerIn()
    print("Q7710410Trigger_3 - TriggerIn")
    this:DestroySelf()
end

function Q7710410Trigger_3:PreTriggerIn()
    print("Q7710410Trigger_3 - PreTriggerIn")
end

function Q7710410Trigger_3:LightUpTriggerIn()
    print("Q7710410Trigger_3 - LightUpTriggerIn")
end

function Q7710410Trigger_3:TriggerOut()
    print("Q7710410Trigger_3 - TriggerOut")
end

return Q7710410Trigger_3
