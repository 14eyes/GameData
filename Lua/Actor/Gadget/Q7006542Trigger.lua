require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006542Trigger = class("Q7006542Trigger", GadgetActorProxy)
Q7006542Trigger.defaultAlias = "Q7006542Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006542Trigger:OnPostDataPrepare()
    print("Q7006542Trigger - OnPostDataPrepare")
    this = self
end

function Q7006542Trigger:OnPostComponentPrepare()
    print("Q7006542Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10.576431, 88.01964, 48.73083, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006542Trigger:TriggerIn()
    print("Q7006542Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006542)
    this:DestroySelf()
end

function Q7006542Trigger:PreTriggerIn()
    print("Q7006542Trigger - PreTriggerIn")
end

function Q7006542Trigger:LightUpTriggerIn()
    print("Q7006542Trigger - LightUpTriggerIn")
end

function Q7006542Trigger:TriggerOut()
    print("Q7006542Trigger - TriggerOut")
end

return Q7006542Trigger
