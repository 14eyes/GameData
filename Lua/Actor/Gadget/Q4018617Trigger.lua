require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4018617Trigger = class("Q4018617Trigger", GadgetActorProxy)
Q4018617Trigger.defaultAlias = "Q4018617Trigger"
local Q40186ClientConfig = require("Quest/Client/Q40186ClientConfig")

local this
local subIDs = Q40186ClientConfig.SubIDs
local datas = Q40186ClientConfig.Datas
local npcs = Q40186ClientConfig.Npcs
local points = Q40186ClientConfig.Points

function Q4018617Trigger:OnPostDataPrepare()
    print("Q4018617Trigger - OnPostDataPrepare")
    this = self
end

function Q4018617Trigger:OnPostComponentPrepare()
    print("Q4018617Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "AQ5009_KinichInter", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 40186)
end

function Q4018617Trigger:TriggerIn()
    print("Q4018617Trigger - TriggerIn")
    this:DestroySelf()
end

function Q4018617Trigger:PreTriggerIn()
    print("Q4018617Trigger - PreTriggerIn")
end

function Q4018617Trigger:LightUpTriggerIn()
    print("Q4018617Trigger - LightUpTriggerIn")
end

function Q4018617Trigger:TriggerOut()
    print("Q4018617Trigger - TriggerOut")
end

return Q4018617Trigger
