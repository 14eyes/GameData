require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500109Changetime = class("Q500109Changetime", GadgetActorProxy)
Q500109Changetime.defaultAlias = "Q500109Changetime"
local Q5001ClientConfig = require("Quest/Client/Q5001ClientConfig")

local this
local subIDs = Q5001ClientConfig.SubIDs
local datas = Q5001ClientConfig.Datas
local npcs = Q5001ClientConfig.Npcs
local points = Q5001ClientConfig.Points

function Q500109Changetime:OnPostDataPrepare()
    print("Q500109Changetime - OnPostDataPrepare")
    this = self
end

function Q500109Changetime:OnPostComponentPrepare()
    print("Q500109Changetime - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5001)
end

function Q500109Changetime:TriggerIn()
    print("Q500109Changetime - TriggerIn")
    globalActor:ChangeDay24TimeClock(7, 0, 0.05, true)
    this:DestroySelf()
end

function Q500109Changetime:PreTriggerIn()
    print("Q500109Changetime - PreTriggerIn")
end

function Q500109Changetime:LightUpTriggerIn()
    print("Q500109Changetime - LightUpTriggerIn")
end

function Q500109Changetime:TriggerOut()
    print("Q500109Changetime - TriggerOut")
end

return Q500109Changetime
