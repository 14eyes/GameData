require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101912FinishTrigger = class("Q1101912FinishTrigger", GadgetActorProxy)
Q1101912FinishTrigger.defaultAlias = "Q1101912FinishTrigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101912FinishTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101912FinishTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(184.4945, 500, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101912FinishTrigger:TriggerIn()
    print("TriggerIn")
    globalActor:ChangeWeather("BigWorld/Weather_Rain_Light")
end

function Q1101912FinishTrigger:TriggerOut()
    print("TriggerOut")
    globalActor:LeaveAllWeather()
end

return Q1101912FinishTrigger
