require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006527Trigger = class("Q7006527Trigger", GadgetActorProxy)
Q7006527Trigger.defaultAlias = "Q7006527Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006527Trigger:OnPostDataPrepare()
    print("Q7006527Trigger - OnPostDataPrepare")
    this = self
end

function Q7006527Trigger:OnPostComponentPrepare()
    print("Q7006527Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20.369759, 18.079962, 25.615492, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006527Trigger:TriggerIn()
    print("Q7006527Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006527)
    this:DestroySelf()
end

function Q7006527Trigger:PreTriggerIn()
    print("Q7006527Trigger - PreTriggerIn")
end

function Q7006527Trigger:LightUpTriggerIn()
    print("Q7006527Trigger - LightUpTriggerIn")
end

function Q7006527Trigger:TriggerOut()
    print("Q7006527Trigger - TriggerOut")
end

return Q7006527Trigger
