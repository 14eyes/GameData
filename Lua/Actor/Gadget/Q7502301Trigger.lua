require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502301Trigger = class("Q7502301Trigger", GadgetActorProxy)
Q7502301Trigger.defaultAlias = "Q7502301Trigger"
local Q75023ClientConfig = require("Quest/Client/Q75023ClientConfig")

local this
local subIDs = Q75023ClientConfig.SubIDs
local datas = Q75023ClientConfig.Datas
local npcs = Q75023ClientConfig.Npcs
local points = Q75023ClientConfig.Points

function Q7502301Trigger:OnPostDataPrepare()
    print("Q7502301Trigger - OnPostDataPrepare")
    this = self
end

function Q7502301Trigger:OnPostComponentPrepare()
    print("Q7502301Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(49.513195, 41.482327, 21.993504, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75023)
end

function Q7502301Trigger:TriggerIn()
    print("Q7502301Trigger - TriggerIn")
    actorMgr:GetActor("75023"):RequestInteraction(npcs.Npc6175.alias, "", true)
    this:DestroySelf()
end

function Q7502301Trigger:PreTriggerIn()
    print("Q7502301Trigger - PreTriggerIn")
end

function Q7502301Trigger:LightUpTriggerIn()
    print("Q7502301Trigger - LightUpTriggerIn")
end

function Q7502301Trigger:TriggerOut()
    print("Q7502301Trigger - TriggerOut")
end

return Q7502301Trigger
